<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="extra/resources/framework/bootstrap-4.0.0/js/bootstrap.min.js"></script>
<script src="extra/resources/framework/data_tables/DataTables-1.11.5/js/jquery.dataTables.min.js"></script>
<script src="extra/resources/framework/data_tables/datatables.min.js"></script>
<script src="extra/resources/framework/data_tables/Responsive-2.2.9/js/dataTables.responsive.min.js"></script>
<script>
$(function () {
  $('.tooltip').tooltip()
})
function copyToClipboard() {
  const str = document.getElementById('item-to-copy').innerText
  const el = document.createElement('textarea')
  el.value = str
  el.setAttribute('readonly', '')
  el.style.position = 'absolute'
  el.style.left = '-9999px'
  document.body.appendChild(el)
  el.select()
  document.execCommand('copy')
  document.body.removeChild(el)
}
$(document).ready(function() {
    var table = $('#filemanager').DataTable( {
        rowReorder: {
            selector: 'td:nth-child(2)'
        },
        responsive: true
    } );
} );
</script>