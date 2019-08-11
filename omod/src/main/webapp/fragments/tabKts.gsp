
<script>

var jq = jQuery;

	jq(function () {

		updateScore("#score1", "#ktsAge");
		updateScore("#score2", "#ktsBloodPressure");
		updateScore("#score3", "#ktsNeurological");
		updateScore("#score4", "#ktsRespiratory");
		updateScore("#score5", "#ktsInjuries");

		jq("span.score").change(function(){
			totalScore();
		});
    });   

	function updateScore(score, selector)
	{
		jq(selector).change(function() {
			jq(score).text(this.options[this.selectedIndex].value);
			jq(score).change();
		});
	}

	function totalScore()
	{
		var s1 = jq("#score1").text();
		var s2 = jq("#score2").text();
		var s3 = jq("#score3").text();
		var s4 = jq("#score4").text();
		var s5 = jq("#score5").text();
		
		if( jq.isNumeric(s1) && jq.isNumeric(s2) && jq.isNumeric(s3) && jq.isNumeric(s4) && jq.isNumeric(s5))
		{
			var value = Number(s1) + Number(s2) + Number(s3) + Number(s4) + Number(s5);
			jq("#ktsTotal").val(value);
		}
		else
		{
			jq("#ktsTotal").val("");
		}
	}
	
</script>


<style>

div.score
{
	text-align: center;
}

span.score {
	display: inline-block;
	margin: 40px 0 0 0px;
	font-weight: bold;
}

#ktsTotalLabel {
	font-weight: bold;
	float: right;
}

#ktsTotal {
	font-weight: bold;
	text-align: center;
}

</style>


<h2 class="top">KTS</h2>


<div class="onerow">
    <div class="col4">	 
        <label>1. Age</label>                 
        <span class="select-arrow">
			<select id="ktsAge" class="form-combo1">
			    <option value=""></option>
			    <option value="2">5-55 years (2)</option>
			    <option value="1">&lt;5 or &gt;55 years (1)</option>
			</select>
        </span>
    </div>
    <div class="col1 score">
    	<span class="score" id="score1"></span>
    </div>
</div>

<div class="onerow">
    <div class="col4">	    
        <label>2. Systolic Pressure on Admission</label>                
        <span class="select-arrow">
			<select id="ktsBloodPressure" class="form-combo1">
			    <option value=""></option>
			    <option value="4">&gt;89 mmHg (4)</option>
			    <option value="3">50-89 mmHg (3)</option>
			    <option value="2">1-49 mmHg (2)</option>
			    <option value="1">Undetectable (1)</option>
			</select>
        </span>
    </div>
    <div class="col1 score">
    	<span class="score" id="score2"></span>
    </div>
</div>

<div class="onerow">
    <div class="col4">	    
        <label>3. Neurological Status</label>                
        <span class="select-arrow">
			<select id="ktsNeurological" class="form-combo1">
			    <option value=""></option>
			    <option value="4">Alert (4)</option>
			    <option value="3">Responsive to verbal stimuli (3)</option>
			    <option value="2">Responsive to painful stimuli (2)</option>
			    <option value="1">Unresponsive (1)</option>
			</select>
        </span>
    </div>
    <div class="col1 score">
    	<span class="score" id="score3"></span>
    </div>
</div>

<div class="onerow">
    <div class="col4">	    
        <label>4. Respiratory Rate on Admission</label>                
        <span class="select-arrow">
			<select id="ktsRespiratory" class="form-combo1">
			    <option value=""></option>
			    <option value="3">10-29 / minute (3)</option>
			    <option value="2">&gt; 29 / minute (2)</option>
			    <option value="1">&lt; 10 / minute (1)</option>
			</select>
        </span>
    </div>
    <div class="col1 score">
    	<span class="score" id="score4"></span>
    </div>
</div>

<div class="onerow">
    <div class="col4">	    
        <label>5. Number of Serious Injuries</label>                
        <span class="select-arrow">
			<select id="ktsInjuries" class="form-combo1">
			    <option value=""></option>
			    <option value="3">Nil (3)</option>
			    <option value="2">Single (2)</option>
			    <option value="1">Multiple (1)</option>
			</select>
        </span>
    </div>
    <div class="col1 score">
    	<span class="score" id="score5"></span>
    </div>
</div>

<div class="onerow">
    <div class="col4">	
		<label id="ktsTotalLabel">KTS Total:</label>
    </div>
     <div class="col1">	
		<input type="text" id="ktsTotal"></input>
    </div>
</div>


<div class="clear"></div>

<div class="onerow" style="margin-top: 50px;">
    <a class="button task prev-tab-button">
        <span>PREVIOUS</span>
    </a>

    <a class="button confirm next-tab-button">
        <span>NEXT</span>
    </a>
</div>
	
<div class="clear"></div>