<?php
    if (!defined('JOURNAL_INSTALLED')) {
        echo '
            <h3>Journal Installation Error</h3>
            <p>Make sure you have uploaded all Journal files to your server and successfully replaced <b>system/engine/front.php</b> file.</p>
            <p>You can find more information <a href="http://docs.digital-atelier.com/opencart/journal/#/settings/install" target="_blank">here</a>.</p>
        ';
        exit();
    }
?>
</div>
<?php if ($this->journal2->settings->get('config_bottom_modules')):  ?>
<div id="bottom-modules">
   <?php echo $this->journal2->settings->get('config_bottom_modules'); ?>
</div>
<?php endif; ?>
<footer class="<?php echo $this->journal2->settings->get('fullwidth_footer'); ?>">
    <div id="footer">
        <?php echo $this->journal2->settings->get('config_footer_menu'); ?>
    </div>
    <div class="bottom-footer <?php echo $this->journal2->settings->get('boxed_bottom'); ?>">
        <div class="<?php echo $this->journal2->settings->get('config_footer_classes'); ?>">
            <?php if ($this->journal2->settings->get('config_copyright')): ?>
            <div class="copyright text-center ">© Toyota Hùng Vương - Chi Nhánh Toyota Tân Tạo</div>
            <?php endif; ?>
           
        </div>
    </div>
</footer>
<div class="scroll-top"></div>
<?php if ($this->journal2->settings->get('config_footer_modules')):  ?>
<?php echo $this->journal2->settings->get('config_footer_modules'); ?>
<?php endif; ?>
<?php $this->journal2->minifier->addScript('catalog/view/theme/journal2/js/init.js', 'footer'); ?>
<?php echo $this->journal2->minifier->js('footer'); ?>
<?php if ($this->journal2->cache->getDeveloperMode() || !$this->journal2->minifier->getMinifyJs()): ?>
<script type="text/javascript" src="index.php?route=journal2/assets/js&amp;j2v=<?php echo JOURNAL_VERSION; ?>"></script>
<?php endif; ?>
<?php if ($this->journal2->html_classes->hasClass('is-admin')): ?>
<script src="catalog/view/theme/journal2/lib/ascii-table/ascii-table.min.js"></script>
<script>
    (function () {
        if (console && console.log) {
            var timers = $.parseJSON('<?php echo json_encode(Journal2::getTimer()); ?>');
            timers['Total'] = parseFloat('<?php echo Journal2::getElapsedTime(); ?>');
            var table = new AsciiTable('Journal2 Profiler');
            table.setAlignRight(1);
            $.each(timers, function (index, value) {
                if (value < 0) {
                    value = 0;
                }
                if (value < 100000) {
                    table.addRow(index.replace('ControllerModuleJournal2', ''), Math.round(value * 1000) + ' ms');
                }
            });
            console.log(table.toString());
        }
    }());
</script>
<?php endif; ?>

<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v3.3',
      appId            : '410125929593575',
      autoLogAppEvents : true
    });
  };

  (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!-- Your customer chat code -->
<div class="fb-customerchat"
  attribution=setup_tool
  page_id="608917309600656">
</div>
asdasd
</body>
</html>
