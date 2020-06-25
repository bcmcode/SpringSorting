<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Events</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
        <link href=“/webjars/bootstrap/4.5.0/css/bootstrap.min.css” rel=“stylesheet” />
        <script src=“/webjars/jquery/3.5.1/jquery.min.js“></script>
		<script src=“/webjars/popper.js/1.16.0/umd/popper.min.js”></script>
		<script src=“/webjars/bootstrap/4.5.0/js/bootstrap.min.js”></script>
        
        <script src="https://d3js.org/d3.v5.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript" src="js/app.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-custom">
            <a class="navbar-brand" href="#">Sort:</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#" id="bubbleSort">
                        <svg class="bi bi-circle" width="1em" height="1em" viewBox="0 0 16 16" fill="white" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                        </svg>
                        <span class="icon">Bubble</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" id="insertionSort">
                        <svg class="bi bi-box-arrow-in-down" width="1em" height="1em" viewBox="0 0 16 16" fill="white" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M4.646 8.146a.5.5 0 0 1 .708 0L8 10.793l2.646-2.647a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 0 1 0-.708z"/>
                            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-1 0v-9A.5.5 0 0 1 8 1z"/>
                            <path fill-rule="evenodd" d="M1.5 13.5A1.5 1.5 0 0 0 3 15h10a1.5 1.5 0 0 0 1.5-1.5v-8A1.5 1.5 0 0 0 13 4h-1.5a.5.5 0 0 0 0 1H13a.5.5 0 0 1 .5.5v8a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5v-8A.5.5 0 0 1 3 5h1.5a.5.5 0 0 0 0-1H3a1.5 1.5 0 0 0-1.5 1.5v8z"/>
                        </svg>
                        <span class="icon">Insertion</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" id="selectionSort">
                        <svg class="bi bi-cursor" width="1em" height="1em" viewBox="0 0 16 16" fill="white" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M14.082 2.182a.5.5 0 0 1 .103.557L8.528 15.467a.5.5 0 0 1-.917-.007L5.57 10.694.803 8.652a.5.5 0 0 1-.006-.916l12.728-5.657a.5.5 0 0 1 .556.103zM2.25 8.184l3.897 1.67a.5.5 0 0 1 .262.263l1.67 3.897L12.743 3.52 2.25 8.184z"/>
                        </svg>
                        <span class="icon">Selection</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" id="mergeSort">
                        <svg class="bi bi-arrows-angle-contract" width="1em" height="1em" viewBox="0 0 16 16" fill="white" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M9.5 2.036a.5.5 0 0 1 .5.5v3.5h3.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5z"/>
                            <path fill-rule="evenodd" d="M14.354 1.646a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 1 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0zm-7.5 7.5a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0z"/>
                            <path fill-rule="evenodd" d="M2.036 9.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V10h-3.5a.5.5 0 0 1-.5-.5z"/>
                        </svg>
                        <span class="icon">Merge</span>
                    </a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" id="quickSort">
                        <svg class="bi bi-lightning" width="1em" height="1em" viewBox="0 0 16 16" fill="white" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M11.251.068a.5.5 0 0 1 .227.58L9.677 6.5H13a.5.5 0 0 1 .364.843l-8 8.5a.5.5 0 0 1-.842-.49L6.323 9.5H3a.5.5 0 0 1-.364-.843l8-8.5a.5.5 0 0 1 .615-.09zM4.157 8.5H7a.5.5 0 0 1 .478.647L6.11 13.59l5.732-6.09H9a.5.5 0 0 1-.478-.647L9.89 2.41 4.157 8.5z"/>
                        </svg>
                        <span class="icon">Quick</span>
                    </a>
                </li>
            </ul>
            <span class="navbar-text">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item nav-link">
                        Color Theme:
                    </li>
                    <li class="nav-item">
                            <select class="custom-select col" name="colorTheme" id="colorTheme">
                                <option value="default">Default</option>
                                <option value="colorblind">Color Blind</option>
                            </select>
                    </li>
                    <li class="nav-item nav-link">
                        <div class="d-flex slider">
                            <span class="mx-3">Slower</span>
                            <div class="">
                              <input type="range" class="custom-range" id="speed" min="40" max="300" value="190">
                            </div>
                            <span class="mx-3">Faster</span>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"  href="#" id="reset">
                            <svg class="bi bi-bootstrap-reboot" width="1em" height="1em" viewBox="0 0 16 16" fill="white" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M1.161 8a6.84 6.84 0 1 0 6.842-6.84.58.58 0 0 1 0-1.16 8 8 0 1 1-6.556 3.412l-.663-.577a.58.58 0 0 1 .227-.997l2.52-.69a.58.58 0 0 1 .728.633l-.332 2.592a.58.58 0 0 1-.956.364l-.643-.56A6.812 6.812 0 0 0 1.16 8zm5.48-.079V5.277h1.57c.881 0 1.416.499 1.416 1.32 0 .84-.504 1.324-1.386 1.324h-1.6zm0 3.75V8.843h1.57l1.498 2.828h1.314L9.377 8.665c.897-.3 1.427-1.106 1.427-2.1 0-1.37-.943-2.246-2.456-2.246H5.5v7.352h1.141z"/>
                            </svg>
                            <span class="icon">Reset</span>
                        </a>
                    </li>
                </ul>
            </span>
        </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="row justify-content-center">
                        <div class="col">
                            <div class="title"><h3 class="title-p"></h3></div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col">
                            <a class="btn" href="#" id="startSorting" hidden="true"><span class="icon">Start Sorting!</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="leftpane">
                <div class="row">
                    <div class="col text-center">                 
                        <svg class="mainContainer"></svg>
                    </div>
                </div>
            </div>
            <div id="rightpane">
                <div class="row infotext">
                    <div class="col text-left">
                        <ul id="selectinfo"></ul>
                    </div>
                </div>
                <div class="row pseudocode">
                    <div class="col text-center">
                        <div class="row">
                            <div class="col text-left code2"></div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->

        <script>
        
      //Define the main container size
        var minWidth = 500;
        var minHeight = minWidth * .6;
        console.log(document.getElementsByClassName("container")[0].clientWidth)
        // var svgWidth = Math.max(minWidth, document.getElementById("leftpane").clientWidth*0.9);
        var svgWidth = Math.max(minWidth, document.getElementsByClassName("container")[0].clientWidth*.9*.66);
        var svgHeight = Math.max(minHeight,svgWidth*.6);

        //Define initial height of bars above bottom of svg container
        var yAdjust = (svgHeight)/2;
        //Set the moveUp and moveDown distance
        var verticalMoveDistance = yAdjust*.9;
        var scalerPadding=50;

        //Define colors
        var colors = {
            "default" : {
                "selected": "#f9c74f",//yellow
                "compare" : "#f94144",//red
                "lower": "#90be6d",//green
                "higher": "#6930c3",//purple
                "finished": "#f3722c",//orange
                "default": "#577590",//bluish gray
                "black": "black",
                "white": "white"
            },   
            "colorblind": {
                "selected": "#F0E442",//yellow
                "compare" : "#D55E00",//red
                "lower": "#009E73",//green
                "higher": "#CC79A7",//pink
                "finished": "#E69F00",//orange
                "default": "#0072B2",//bluish gray
                "black": "black",
                "white": "white"
            }
        };

        //Select color theme
        var selectedTheme = "default";
        var currentTheme = colors[selectedTheme];
        $("#colorTheme").change(function(){
            if(selectedTheme != $(this).val()){
                selectedTheme = $(this).val();
                console.log("current theme: " + selectedTheme);
                currentTheme = colors[selectedTheme];
                console.log(originalData);
                stopSort = true;
                resetBars(originalData);
                refreshData();
                
            }
        });

        function initialBars(data){
            // loadPseudocode("bubblesort",-1);// took out this line for now
            ////// create a g tag first to group rect and text
            svg.attr("width", svgWidth)
            .attr("height", svgHeight);
            var barChart = svg.selectAll("g")  
            .data(data)
            .enter()
            .append("g")
            // .attr("id", function(d,i){return 'item'+i;})
            .attr("transform", function(d, i){return "translate(" + (barWidth * i) + "," + (svgHeight-barHeight(d)-yAdjust) + ")";})               
            .attr("positionID", function(d,i){return "p"+(i+1);});
            
            barChart.append("rect")
            .attr("height",function(d) {return barHeight(d);})
            .attr("width",barWidth-barPadding)
            .attr("rx",5)
            .attr('fill', currentTheme['default']);

            barChart.append("text")
            .attr("x",(barWidth-barPadding)/2)
            .attr("y", "-10")
            .attr("class", "barValue")
            .attr("text-anchor", "middle")
            .style("fill",currentTheme["black"])
            .text(function(d) {return d;});
        }

        // resets the bars
        function resetBars(data){
            ////// currently not used in 'reset'
            stopSort = true;
            var barChart = svg.selectAll("g").remove();  
            initialBars(data);
        }

        //Randomizes input data set
        function shuffle(dataset){
            for(var i = 0; i < dataset.length; i++){
                var j = Math.floor(Math.random()*dataset.length)
                var temp = dataset[i];
                dataset[i] = dataset[j];
                dataset[j] = temp;
            }
            return dataset;
        }

        //Function to show all the bars  -- not sure if we need this one anymore
        function generateBars(data){
            if (stopSort) return;
            //Generate all the bars
            var barChart = svg.selectAll("g")  
            .data(data)
            .transition()
            .attr("transform", function(d, i){return "translate(" + (barWidth * i) + "," + (svgHeight-barHeight(d)-yAdjust) + ")";});
            
            barChart.select("rect")
            .attr("height",function(d) {return barHeight(d);})

            barChart.select("text")
            .attr("x",(barWidth-barPadding)/2)
            .text(function(d) {return d;});
        }

        // basically generate bars without the transition
        function refreshPositionIds(data){
            // var yAdjust = 300;
            //Generate all the bars
            var barChart = svg.selectAll("g")  
            .data(data)
            .attr("transform", function(d, i){return "translate(" + (barWidth * i) + "," + (svgHeight-barHeight(d)-yAdjust) + ")";})
            .attr("positionID", function(d,i){return "p"+(i+1);});
            barChart.select("rect")
            .attr("height",function(d) {return barHeight(d);})

            barChart.select("text")
            .attr("x",(barWidth-barPadding)/2)
            .text(function(d) {return d;});
        }

        //Swaps position IDs of the elements at the two given position IDs
        function swapPositionID(item1, item2){
            var item1 = findElement(item1);
            var item2 = findElement(item2);
            var temp = item1.attr("positionID");
            item1.attr("positionID", item2.attr("positionID"));
            item2.attr("positionID", temp);
        }

        function swapPosition(num1, num2) { 
            let gRight = findElement(num1);
            let gLeft = findElement(num2);
            let hRight = parseTransform(gRight);
            let hLeft = parseTransform(gLeft);
            gRight.transition().attr("transform", "translate(" + (barWidth * (num2)) + "," + hRight[1] + ")");
            gLeft.transition().attr("transform", "translate(" + (barWidth * (num1)) + "," + hLeft[1] + ")");
            swapPositionID(num1, num2);
        }

        //Move bar at index, delas are given in units of how many indexes to move(negative = left or down, positive = right or up)
        function move(index, deltaX, deltaY){
            var item = findElement(index);
            var coord = parseTransform(item);
            coord[0] = coord[0] + barWidth*deltaX;
            coord[1] = coord[1] - verticalMoveDistance*deltaY;
            item.transition().duration(transitionDuration).attr("transform", "translate(" + coord[0] + "," + coord[1] + ")");
        }


        // we might want to refactor all the code to just use the move function if we have time,
        //Move item down
        function moveDown(index){
            //Set how far we move the item down
            var item = findElement(index);
            var coord = parseTransform(item);
            coord[1] = coord[1] + verticalMoveDistance;
            item.transition().duration(transitionDuration).attr("transform", "translate(" + coord[0] + "," + coord[1] + ")");
        }

        //Move item up
        function moveUp(index){
            //Set how far we move the item down
            var item = findElement(index);
            var coord = parseTransform(item);
            coord[1] = coord[1] - verticalMoveDistance;
            item.transition().duration(transitionDuration).attr("transform", "translate(" + coord[0] + "," + coord[1] + ")");
        }

        //Move item left
        function moveLeft(index){
            //Set how far we move the item down
            var leftDistance = barWidth;
            var item = findElement(index);
            var coord = parseTransform(item);
            coord[0] = coord[0] - leftDistance;
            item.transition().duration(transitionDuration).attr("transform", "translate(" + coord[0] + "," + coord[1] + ")");
        }

        //Move item right
        function moveRight(index){
            //Set how far we move the item down
            var rightDistance = barWidth;
            var item = findElement(index);
            var coord = parseTransform(item);
            coord[0] = coord[0] + rightDistance;
            item.transition().duration(transitionDuration).attr("transform", "translate(" + coord[0] + "," + coord[1] + ")");
        }

        //Pass in entire element and output is an array with the [x, y] of the transform attribute
        function parseTransform(element){
            if(element == null) return null;
            var transform = element.attr("transform");
            var coord = transform.match(/[+-]?\d+(?:\.\d+)?/g);
            return [parseInt(coord[0]), parseInt(coord[1])];
        }

        //swap color function, takes bar num and color
        //color should be one of the color keys
        function changeColor(num, color){
            if (num===-1) {
                let bars = svg.selectAll("g")
                bars.select("rect").transition().attr("fill",currentTheme[color]);
                return;
            }
            let bar = findElement(num);
            bar.select("rect").transition().attr("fill",currentTheme[color]);
        }


        //Finds by position ID and returns the entire element
        function findElement(position){
            position += 1;
            return svg.selectAll("g").filter(function() {return d3.select(this).attr("positionID") == "p" + position;});
        }

        //Sleep function so that you can see transitions
        function sleep(ms) {
            return new Promise(resolve => setTimeout(resolve, ms));
        }

        //Create new array
        function randomArray(length, upperLimit) {
            var newArray = [];
            for (var x = 0; x < length; x++) {
                newArray.push(Math.floor(Math.random()*(upperLimit - 3 + 1)) + 3);
            }
            return newArray;
        }

        function loadTitle(sortType) {
            if (sortType == "reset") {
                d3.select(".title-p").transition().text("").style("display","none");
                return;
            }
            d3.select(".title-p").transition().text(sortType).style("display","inline");
        }

        function createZeroArray(length){
            var arr = [];
            for(var i = 0; i < length; i++){
                arr.push(0);
            }
            return arr;
        }

        function openRightPane() {
            if (document.getElementsByClassName("container")[0].clientWidth < 992) {
                d3.select("#rightpane").style("width","100%");
                return;
            }
            $("#leftpane").animate({
                width: '66%'
            }, 800);
            $("#rightpane").animate({opacity:0},0).animate({
                width: '30%'
            }, 700).animate({opacity:1},1000);
            
        }

        function closeRightPane(speed) {
            if (document.getElementsByClassName("container")[0].clientWidth < 992) {
                return;
            }
            speed = speed || "default"
            if (speed == "quick") {
                $("#leftpane").animate({
                    width: '99%'
                }, 0);
                $("#rightpane").animate({
                    width: '0%'
                }, 0);
                return;
            }
            $("#leftpane").animate({
                width: '99%'
            }, 800);
            $("#rightpane").animate({
                width: '0%'
            }, 400);
        }

        function resetDimension() {
            svgWidth = Math.max(minWidth, document.getElementsByClassName("container")[0].clientWidth*.9*.66);
            svgHeight = Math.max(minHeight,svgWidth*.6);
            barWidth = Math.floor((svgWidth - barPadding) / originalData.length);
            verticalMoveDistance = yAdjust*.9;
            yAdjust = (svgHeight)/2;
        }

        function barHeight(d) {
            var maxData = Math.max.apply(false,originalData);
            var scaler = d3.scaleLinear().domain([0,maxData]).range([0,yAdjust-scalerPadding]);
            return scaler(d);
        }
        
        
            // For smaller screen, collapse navbar when a link is clicked
            $('.navbar-nav>li>a').on('click', function(){
                $('.navbar-collapse').collapse('hide');
            });

            //Initialize the transition duration
            var transitionDuration = 150;
            //Initialize time to wait between animations in ms
            var sleepTime = 3*transitionDuration;

            //Define the main container size
            // var svgWidth = 1000;
            // var svgHeight = 600;
            //Define initial data
            var originalData = randomArray(15,150);
            //Define display padding and width of bars
            var barPadding = 5;  
            var barWidth = Math.floor((svgWidth - barPadding) / originalData.length);

            //Define a variable to indeicate which sort is selected
            var selectedSort = 0;
            //Define a variable to prevent double sorting bugs
            var canSort = true;
            ////// set a flag to stop async function call when reset is triggered
            var stopSort = false;

            //Start page at bubble sort
            stopSort = true;
            selectedSort = 1;
            loadTitle("Bubble Sort");
            refreshData();
            $("#startSorting").attr("hidden", false);

            //Set the default container's size
            var svg = d3.select('.mainContainer')
                .attr("width", svgWidth)
                .attr("height", svgHeight)
                .attr("class", "bar-chart");

            //Show initial data shuffled
            initialBars(shuffle(originalData));

            function refreshData(){
                if(!canSort){
                    loadPseudocode("bubblesort",-1);
                    closeRightPane();
                    resetDimension();
                    var currentchart = svg.selectAll("g").remove();
                    originalData = randomArray(15,150);
                    initialBars(originalData);
                    canSort = true;
                }
            }

            //Set on click listeners
            $("#speed").change(function(){
                transitionDuration = 340-this.value;
                sleepTime = 3*transitionDuration;
                console.log(transitionDuration);
            });

            $("#reset").click(function(){
                stopSort = true;
                refreshData();
            });



            $("#startSorting").click(function(){
                console.log(transitionDuration);
                if(canSort){
                    stopSort = true;
                    openRightPane();
                    if(selectedSort == 1) bubbleSort(originalData);
                    else if(selectedSort == 2) insertionSort(originalData);
                    else if(selectedSort == 3) selectionSort(originalData);
                    else if(selectedSort == 4) bottomUpMergeSort(originalData);
                    else if(selectedSort == 5) quickSort(originalData, 0, originalData.length-1);
                }
                canSort = false;
            });

            $("#bubbleSort").click(function(){
                stopSort = true;
                selectedSort = 1;
                loadTitle("Bubble Sort");
                refreshData();
                $("#startSorting").attr("hidden", false);
                // loadPseudocode("bubblesort",0);
            });

            $("#insertionSort").click(function(){
                stopSort = true;
                selectedSort = 2;
                loadTitle("Insertion Sort");
                refreshData();
                $("#startSorting").attr("hidden", false);
                // loadPseudocode("insertionsort",0);
            });

            $("#selectionSort").click(function(){
                stopSort = true;
                selectedSort = 3;
                loadTitle("Selection Sort");
                refreshData();
                $("#startSorting").attr("hidden", false);
            });

            $("#mergeSort").click(function(){
                stopSort = true;
                selectedSort = 4;
                loadTitle("Merge Sort");
                refreshData();
                $("#startSorting").attr("hidden", false);
            });

            $("#quickSort").click(function(){
                stopSort = true;
                selectedSort = 5;
                loadTitle("Quick Sort");
                refreshData();
                $("#startSorting").attr("hidden", false);
            });
            
            //Bubble sort function
            async function bubbleSort(dataset){
                stopSort = false;
                loadTitle("Bubble Sort");
                let endsort = dataset.length;
                let switched = true;
                loadPseudocode("bubblesort",0)
                while (switched) {
                    if (stopSort) return;
                    loadPseudocode("bubblesort",2)
                    switched=false;
                    await sleep(sleepTime*4);
                    if (stopSort) return;
                    for (var i = 1; i < endsort; i++) {
                        loadPseudocode("bubblesort",3)
                        if (stopSort) return;
                        changeColor(i,"selected");
                        changeColor(i-1,"selected");
                        await sleep(sleepTime);
                        if (stopSort) return;
                        let vRight = parseInt(findElement(i).select("text").text());
                        let vLeft = parseInt(findElement(i-1).select("text").text());

                        if (vLeft > vRight) {
                            switched = true;
                            swapPosition(i,i-1)
                            if (stopSort) return;
                            await sleep(sleepTime*0.8);
                            if (stopSort) return;
                        }
                        changeColor(i,"default");
                        changeColor(i-1,"default");
                    }
                    // finishBarColor(endsort);
                    changeColor(endsort-1,"finished");
                    loadPseudocode("bubblesort",4);
                    if (stopSort) return;
                    await sleep(sleepTime*3);
                    if (stopSort) return;
                    endsort--;
                }
                loadPseudocode("bubblesort",1);
                if (stopSort) return;
                await sleep(sleepTime*5);
                if (stopSort) return;
                loadPseudocode("bubblesort",-1);
                closeRightPane();
                // finishBarColor(-1);
                changeColor(-1,"finished");

            }

            //Insertion Sort function
            async function insertionSort(data){
                stopSort = false;
                loadTitle("Insertion Sort");
                var tempData = data;
                loadPseudocode("insertionsort",0)
                loadPseudocode("insertionsort",2)
                if (stopSort) return;
                await sleep(sleepTime*2);
                if (stopSort) return;
                for(var i = 1; i < data.length; i++){
                    var current = data[i];
                    var moving = i;
                    loadPseudocode("insertionsort",3)
                    moveDown(moving);
                    changeColor(moving, "compare");
                    if (stopSort) return;
                    await sleep(sleepTime*3);
                    if (stopSort) return;
                    var j = i-1;
                    while((j >= 0) && (current < data[j])){
                        if (stopSort) return;
                        loadPseudocode("insertionsort",4)
                        changeColor(j, "selected");
                        await sleep(sleepTime);
                        if (stopSort) return;
                        moveRight(j);
                        changeColor(j, "finished");
                        moveLeft(moving);
                        if (stopSort) return;
                        await sleep(sleepTime);
                        if (stopSort) return;
                        data[j+1] = data[j];
                        swapPositionID(j+1, j);
                        j--;
                        moving--;
                    }
                    //Make sure j is not negative or else all elements will change color
                    if (stopSort) return;
                    if(j >= 0){
                        if (stopSort) return;
                        changeColor(j, "selected");
                        await sleep(sleepTime);
                        if (stopSort) return;
                        changeColor(j, "finished");
                    } 
                    if (stopSort) return;
                    moveUp(j+1);
                    changeColor(j+1, "finished");
                    data[j+1] = current;
                }
                loadPseudocode("insertionsort",1);
                if (stopSort) return;
                await sleep(sleepTime*4);
                if (stopSort) return;
                loadPseudocode("insertionsort",-1);
                closeRightPane();
            }

            //Selection sort function
            async function selectionSort(dataset){
                stopSort = false;
                loadTitle("Selection Sort");
                let endLoop = dataset.length;
                loadPseudocode("selectsort",0)
                for (var i = 0; i<endLoop-1;i++) {
                    if (stopSort) return;
                    let minPosition = i;
                    changeColor(i,"default");
                    loadPseudocode("selectsort",2);
                    await sleep(sleepTime*3);
                    if (stopSort) return;
                    for (var j = i+1;j<endLoop;j++) {
                        if (stopSort) return;
                        changeColor(j,"selected");
                        loadPseudocode("selectsort",3);
                        await sleep(sleepTime);
                        if (stopSort) return;
                        let lookupVal = parseInt(findElement(j).select("text").text());
                        let minVal = parseInt(findElement(minPosition).select("text").text());
                        if (lookupVal < minVal) {
                            
                            changeColor(j,"lower");
                            changeColor(minPosition,"default");
                            changeColor(i,"default")
                            minPosition = j;
                        } else {
                            changeColor(j,"default");
                        }

                    }
                    changeColor(i,"higher");
                    loadPseudocode("selectsort",4);
                    if (stopSort) return;
                    await sleep(sleepTime*3);
                    if (stopSort) return;
                    if (minPosition != i) {
                        swapPosition(i,minPosition);
                        if (stopSort) return;
                        await sleep(sleepTime*4);
                        if (stopSort) return;
                        changeColor(minPosition,"default")
                    }
                    
                    if (stopSort) return;
                    changeColor(i,"finished");
                }
                loadPseudocode("selectsort",1);
                if (stopSort) return;
                await sleep(sleepTime*5);
                if (stopSort) return;
                loadPseudocode("selectsort",-1);
                closeRightPane();
                // finishBarColor(-1);
                changeColor(-1,"lower");

            }

            // Merge sort function
            function bottomUpMergeSort(dataset) {
                stopSort = false;
                loadTitle("Merge Sort");
                loadPseudocode("mergesort",0)
                let array = dataset.map(function(data) { return data; });
                bottomUpSort(array, array.length);
                return array;
            }
            
            async function bottomUpSort(dataset, n) {
                var width,
                    i;
                for(width=1; width<n; width=width*2) {
                    refreshPositionIds(dataset);
                    for(i=0; i<n; i=i+2*width) {
                        if(stopSort) return;
                        loadPseudocode("mergesort",2);
                        await sleep(sleepTime);
                        let left = i;
                        let right = Math.min(i+width, n);
                        let end = Math.min(i+2*width, n);
                        for(let j=left; j<end; j++){
                            if(stopSort) return;
                            if(j<right) changeColor(j,"lower");
                            else changeColor(j,"higher");                            
                            move(j,0,-1);
                            await sleep(sleepTime);
                        }
                        loadPseudocode("mergesort",3)
                        bottomUpMerge(dataset, left, right, end);
                        
                        await sleep(sleepTime*2*width);
                        
                    }
                    loadPseudocode("mergesort",4)
                    await sleep(sleepTime+1500);
                }
                loadPseudocode("mergesort",1);
                await sleep(sleepTime+1500);
                loadPseudocode("mergesort",-1)
                closeRightPane();
            }

            async function bottomUpMerge(dataset, left, right, end) {
                var n = left,
                    m = right,
                    currentSort = [],
                    j,k;
                
                for(j=left; j<end; j++) {
                    if(stopSort) return;
                    if(n<right && (m>=end || dataset[n]<dataset[m])) {
                        currentSort.push(dataset[n]);
                        changeColor(n,'default');
                        move(n, j-n, 1);
                        await sleep(sleepTime);
                        n++;
                    }
                    else{
                        currentSort.push(dataset[m]);
                        changeColor(m,'default');
                        move(m, -1*(m-j), 1);
                        await sleep(sleepTime);
                        m++;
                    }
                }
                
                currentSort.map(function(data,i) { dataset[left + i] = data; });
            }

            //Quick sort
            //Used to track sorted elements
            var finished;
            async function quickSortPartition(data, first, last){
                if(stopSort) return;
                //Set last value in array as the pivot value
                loadPseudocode("quicksort",2);
                var pivot = data[last];
                changeColor(last, "compare");
                await sleep(sleepTime*3);
                if(stopSort) return;
                //Keep track of the next value that is larger than the pivot
                var i = first;
                loadPseudocode("quicksort",3);
                //Loop through all values to move all values smaller than pivot to left side of pivot and all values greater to the right
                for(var j = first; j < last; j++){
                    if(stopSort) return;
                    //Change color of bar we are looking at
                    changeColor(j, "selected");
                    if(stopSort) return;
                    await sleep(sleepTime);
                    if(data[j] <= pivot){
                        if(stopSort) return;
                        changeColor(j, "lower");
                        await sleep(sleepTime);
                        var temp = data[j];
                        data[j] = data[i];
                        data[i] = temp;
                        if(stopSort) return;
                        //Only swap if there is something to swap
                        if(i != j){
                            await swapPosition(i, j);
                            await sleep(sleepTime);
                        }
                        i++;
                    }else{
                        if(stopSort) return;
                        changeColor(j, "higher");
                        await sleep(sleepTime);
                    }
                }
                //Swap pivot with the next value that is larger than the pivot
                loadPseudocode("quicksort",4);
                await sleep(sleepTime*2);
                if(stopSort) return;
                var temp = data[i];
                data[i] = data[last];
                data[last] = temp;
                if(stopSort) return;
                swapPosition(i, last);
                await sleep(sleepTime*3);
                //set pivot to different color to show it is in final position
                changeColor(i, "finished");
                finished[i] = 1;
                if(stopSort) return;
                await sleep(sleepTime);
                //Reset the position IDs
                if(stopSort) return;
                refreshPositionIds(data);
                await sleep(sleepTime*3);
                //set all finished back to orange;
                if(stopSort) return;
                for(var index = 0; index < finished.length; index++){
                    if(stopSort) return;
                    if(finished[index] == 1){
                        changeColor(index, "finished");
                    } else{
                        changeColor(index, "default");
                    }
                }
                //Return where the new pivot will be
                return i;
            }

            async function quickSort(data, first, last){
                stopSort = false;
                finished = createZeroArray(data.length);
                loadTitle("Quick Sort");
                loadPseudocode("quicksort",0)
                //Create an array to use as a stack and keep track of all of the partitions we have
                var stack = [];
                //Add first and last index to the stack
                stack.push(first);
                stack.push(last);
                //While the stack still has elements
                if(stopSort) return;
                while(stack.length > 0){
                    //Partition the data
                    last = stack.pop();
                    first = stack.pop();
                    if(stopSort) return;
                    var pivot = await this.quickSortPartition(data, first, last);
                    //Push the new partition to the stack
                    if(pivot - 1 > first){
                        stack.push(first);
                        stack.push(pivot-1);
                    }
                    if(pivot+1 < last){
                        stack.push(pivot +1);
                        stack.push(last);
                    }
                    if(stopSort) return;
                }
                loadPseudocode("quicksort",1);
                if(stopSort) return;
                await sleep(sleepTime*4);

                //Change all to orange
                changeColor(-1, "finished");
                loadPseudocode("quicksort",-1);
                closeRightPane();
            }

            function loadPseudocode(sortType, num) {
                ////// highlight appropriate line in pseudocode and show explanation for currently highlighted line
                
                var codeDict = {
                    "bubblesort": {
                                    "line1": ["while (switched)", "there was no swap during the entire loop, array is now sorted","Bubble sort is one of the simplest sorting algorithms to understand and implement and because of this it is usually the first sorting alogorith taught"],
                                    "line2": ["   switched = false\n   for i = 1 to lastsort-1", "start each 'for' loop with switched = false, and iterate until the last unsorted position", "Each item in the list is compared to the item next to it and swapped if they are out of order"],
                                    "line3": ["      if left value > right value\n      swap(left value, right value)\n      switched = true","If value at (i-1) is greater than value at (i), swap the two values and set switched flag to true", "The larger items seem to 'bubble' up to the end of the list"],
                                    "line4": ["   lastsort--","Last position of each 'for' loop is sorted","While it is easy to understand, it is very inefficient with an average complexity of O(n^2)"]
                                    },
                    "insertionsort": {
                                    "line1": ["for i = 1 to data.length-1", "'for' loop is complete and list is sorted","Insertion sort is very simple to understand and easy to implement"],
                                    "line2": ["   j = i - 1", "assign j the position to the left of i","The comparison moves through the list and the smaller items are inserted back in proper order"],
                                    "line3": ["   while (j>=0 && data[i] < data[j]", "check if data[i] is smaller than values on the left side","It is similar to how people generally sort a hand of cards"],
                                    "line4": ["      swap(i, j)\n      j--", "shift i to the left until i is sorted","It is very inefficient, similar to bubble sort, with an average complexity of O(n^2)"]
                                    },
                    "mergesort": {
                                    "line1": ["for width = 1 to data.length","'for' loop is complete and list is sorted","Merge sort is generally implemented by recursively splitting a list into smaller lists"],
                                    "line2": ["   for i = 1 to partition.length","partition data according to current width","The smaller lists are then shuffled back together in order"],
                                    "line3": ["      if left < right\n         load current index with left\n      else load current index with right","sort values in current partition by comparing left and right sections","It is considered an effecient sorting algorithm and has a stable time complexity of O(n log n)"],
                                    "line4": ["   width*=2","increase width of partition by 100% (recursively merge adjoining partitions","Invented by John von Neumann in 1945"]
                                    },
                    "quicksort": {
                                    "line1": ["while (unsorted partition exists)","no unsorted partition remains and list is sorted","Quick sort works by selecting a pivot and partitioning a list into two parts, smaller and larger"],
                                    "line2": ["   pivot = partition[partition.length-1]","choose last index in current (unsorted) partition as pivot","Each part is then sorted the same way recursively"],
                                    "line3": ["   if partition[i] < pivot\n      swap(i, first item > pivot","move values less than pivot to the left and those greater than pivot to the right","Average time complexity O(n log n) worst case O(n^2)"],
                                    "line4": ["   swap(pivot, first item > pivot)","place pivot between left and right, and pivot is now sorted","Invented by Tony Hoare in 1959"]
                                    },
                    "selectsort": {
                                    "line1": ["for i = 1 to data.length - 1", "'for' loop is complete and list is sorted","Selection sort works by subdividing a list into an unsorted and a sorted list"],
                                    "line2": ["   currentMin = i\n   for j = i+1 to data.length", "given current position of i, check if there are values lower than data[i]","It then finds the smallest item in the unsorted list and swaps it with the first item in the unsorted list"],
                                    "line3": ["      if data[j] < data[currentMin]\n         currentMin = j", "if a lower value is found, assign j as the new minimum position","This becomes the last item in the sorted list"],
                                    "line4": ["   if currentMin != i\n      swap(i, currentMin)","if j loop has found a new minimum, swap i and new minimum","It has an average time complexity of O(n^2)"]
                                    }
                }
                ////// if num = -1, remove code and hide pseudocode div
                if (num===-1) {
                    d3.select(".lineval").text("");
                    d3.select(".code2").selectAll("pre").remove();
                    d3.select(".code2").style("border", "none");
                    d3.select(".pseudocode").style("display","none");
                    d3.select("#selectinfo").selectAll("li").remove();
                    return;
                }
                let code = d3.select(".code2");
                let info = d3.select("#selectinfo")
                let lineCount = Object.keys(codeDict[sortType]).length;
                if (isNaN(lineCount)) {
                    return;
                }

                ////// if num = 0, load code and show div
                if (num===0) {
                    for (var z = 1; z<=lineCount; z++) {
                        code.append("pre").attr("class","line" + z).text(codeDict[sortType]["line" + z][0]);
                        info.append("li").text(codeDict[sortType]["line" + z][2])
                    }
                    code.style("padding","10px").style("background-color","white"); 
                    d3.select(".pseudocode").style("display","block");
                    return;
                }
                if (stopSort) return;              
                
                ////// any other value of num (>0), highlight code and show additional text
                for (var z = 1; z<=lineCount; z++) {
                    let line = d3.select(".line" + z)
                    if (z === num) {
                        line.style("background-color","black")
                        .style("color","white");
                    } else {
                        line.style("background-color","white")
                        .style("color","black");
                    }
                }
                // d3.select(".lineval").text(codeDict[sortType]["line" + num][1]);
            }

        </script>
	</body>
</html>