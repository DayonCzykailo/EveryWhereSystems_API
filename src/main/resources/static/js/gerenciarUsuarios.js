


var div = document.createElement('div');
div.className = 'form-group';
var label = document.createElement('label');
label.className = 'col-sm-2 control-label';
label.innerHTML = 'Comments';
label.for = 'inputText';
var div1 = document.createElement('div');
div1.className = 'col-sm-10';
var commentText = document.createElement('textarea');
commentText.className = 'form-control';
commentText.id = 'inputText';
commentText.rows = '3';
commentText.placeholder = 'Write your comments';
div.appendChild(label);
div1.appendChild(commentText);
div.appendChild(div1);
document.body.appendChild(div);