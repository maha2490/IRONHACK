//INSERTING JS CODE 

//element inlining within HTML doc
<button onclick="alert('You clicked me!')">Click me!</button>
//another example in a script tag. put at either the head tag or just before closing body tag 
<script type="text/javascript">
	var theButton = document.getElementsByTagName('button'[0]);
	theButton.onclick = function () {alert('You clicked me!');};
</script>

//remotely linked
<script type="text/javascript" src="js/demo.js"></script>
//<script> tags should normally appear at the end of the document, after the file has finised loading.
