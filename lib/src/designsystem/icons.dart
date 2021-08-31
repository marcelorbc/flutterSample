import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsNaturaEco {
  Widget load(String name, Color? color, [double? width, double? height]) {
    final String assetName = './lib/assets/icons/svg/$name.svg';

    if (width != null && height != null) {
      return SvgPicture.asset(
        assetName,
        width: width,
        height: height,
        color: color == null ? Colors.orange.shade400 : color,
      );
    } else {
      return SvgPicture.asset(
        assetName,
        color: color == null ? Colors.orange.shade400 : color,
      );
    }
  }

  Widget filledActionAdd({Color? color, double? width, double? height}) => load('filled-action-add', color, width, height);
  Widget filledActionCancel({Color? color, double? width, double? height}) => load('filled-action-cancel', color, width, height);
  Widget filledActionCheck({Color? color, double? width, double? height}) => load('filled-action-check', color, width, height);
  Widget filledActionClock({Color? color, double? width, double? height}) => load('filled-action-clock', color, width, height);
  Widget filledActionDelete({Color? color, double? width, double? height}) => load('filled-action-delete', color, width, height);
  Widget filledActionLove({Color? color, double? width, double? height}) => load('filled-action-love', color, width, height);
  Widget filledActionNewrequest({Color? color, double? width, double? height}) => load('filled-action-newrequest', color, width, height);
  Widget filledActionRating({Color? color, double? width, double? height}) => load('filled-action-rating', color, width, height);
  Widget filledActionRequest({Color? color, double? width, double? height}) => load('filled-action-request', color, width, height);
  Widget filledActionSubtract({Color? color, double? width, double? height}) => load('filled-action-subtract', color, width, height);
  Widget filledBrandAvonshorthand({Color? color, double? width, double? height}) => load('filled-brand-avonshorthand', color, width, height);
  Widget filledBrandFacebook({Color? color, double? width, double? height}) => load('filled-brand-facebook', color, width, height);
  Widget filledBrandGoogle({Color? color, double? width, double? height}) => load('filled-brand-google', color, width, height);
  Widget filledBrandInstagram({Color? color, double? width, double? height}) => load('filled-brand-instagram', color, width, height);
  Widget filledBrandLinkedin({Color? color, double? width, double? height}) => load('filled-brand-linkedin', color, width, height);
  Widget filledBrandNaturarosacea({Color? color, double? width, double? height}) => load('filled-brand-naturarosacea', color, width, height);
  Widget filledBrandPinterest({Color? color, double? width, double? height}) => load('filled-brand-pinterest', color, width, height);
  Widget filledBrandSpotify({Color? color, double? width, double? height}) => load('filled-brand-spotify', color, width, height);
  Widget filledBrandTwitter({Color? color, double? width, double? height}) => load('filled-brand-twitter', color, width, height);
  Widget filledBrandWhatsapp({Color? color, double? width, double? height}) => load('filled-brand-whatsapp', color, width, height);
  Widget filledBrandYoutube({Color? color, double? width, double? height}) => load('filled-brand-youtube', color, width, height);
  Widget filledContentChannel({Color? color, double? width, double? height}) => load('filled-content-channel', color, width, height);
  Widget filledContentDivulgation({Color? color, double? width, double? height}) => load('filled-content-divulgation', color, width, height);
  Widget filledContentQuote({Color? color, double? width, double? height}) => load('filled-content-quote', color, width, height);
  Widget filledDefaultMockup({Color? color, double? width, double? height}) => load('filled-default-mockup', color, width, height);
  Widget filledFinanceCharging({Color? color, double? width, double? height}) => load('filled-finance-charging', color, width, height);
  Widget filledFinanceInvoice({Color? color, double? width, double? height}) => load('filled-finance-invoice', color, width, height);
  Widget filledFinanceMoney({Color? color, double? width, double? height}) => load('filled-finance-money', color, width, height);
  Widget filledFinancePaymentlink({Color? color, double? width, double? height}) => load('filled-finance-paymentlink', color, width, height);
  Widget filledFinancePaymentnotapproved({Color? color, double? width, double? height}) => load('filled-finance-paymentnotapproved', color, width, height);
  Widget filledMediaPause({Color? color, double? width, double? height}) => load('filled-media-pause', color, width, height);
  Widget filledMediaPlay({Color? color, double? width, double? height}) => load('filled-media-play', color, width, height);
  Widget filledMediaStop({Color? color, double? width, double? height}) => load('filled-media-stop', color, width, height);
  Widget filledNavigationArrowbottom({Color? color, double? width, double? height}) => load('filled-navigation-arrowbottom', color, width, height);
  Widget filledNavigationArrowleft({Color? color, double? width, double? height}) => load('filled-navigation-arrowleft', color, width, height);
  Widget filledNavigationArrowright({Color? color, double? width, double? height}) => load('filled-navigation-arrowright', color, width, height);
  Widget filledNavigationArrowtop({Color? color, double? width, double? height}) => load('filled-navigation-arrowtop', color, width, height);
  Widget filledNavigationDirectionleft({Color? color, double? width, double? height}) => load('filled-navigation-directionleft', color, width, height);
  Widget filledNavigationDirectionright({Color? color, double? width, double? height}) => load('filled-navigation-directionright', color, width, height);
  Widget filledNavigationDirectiontbottom({Color? color, double? width, double? height}) => load('filled-navigation-directiontbottom', color, width, height);
  Widget filledNavigationDirectiontop({Color? color, double? width, double? height}) => load('filled-navigation-directiontop', color, width, height);
  Widget filledNavigationHome({Color? color, double? width, double? height}) => load('filled-navigation-home', color, width, height);
  Widget filledNavigationMenu({Color? color, double? width, double? height}) => load('filled-navigation-menu', color, width, height);
  Widget filledNavigationMore({Color? color, double? width, double? height}) => load('filled-navigation-more', color, width, height);
  Widget filledNavigationSetbottom({Color? color, double? width, double? height}) => load('filled-navigation-setbottom', color, width, height);
  Widget filledNavigationSetleft({Color? color, double? width, double? height}) => load('filled-navigation-setleft', color, width, height);
  Widget filledNavigationSetright({Color? color, double? width, double? height}) => load('filled-navigation-setright', color, width, height);
  Widget filledNavigationSettop({Color? color, double? width, double? height}) => load('filled-navigation-settop', color, width, height);
  Widget filledPlaceTruck({Color? color, double? width, double? height}) => load('filled-place-truck', color, width, height);
  Widget filledProductBrandsproduct({Color? color, double? width, double? height}) => load('filled-product-brandsproduct', color, width, height);
  Widget filledSocialMyprofile({Color? color, double? width, double? height}) => load('filled-social-myprofile', color, width, height);
  Widget filledToggleIndeterminatecheckbox({Color? color, double? width, double? height}) => load('filled-toggle-indeterminatecheckbox', color, width, height);
  Widget outlinedActionAdd({Color? color, double? width, double? height}) => load('outlined-action-add', color, width, height);
  Widget outlinedActionAddproduct({Color? color, double? width, double? height}) => load('outlined-action-addproduct', color, width, height);
  Widget outlinedActionAttachment({Color? color, double? width, double? height}) => load('outlined-action-attachment', color, width, height);
  Widget outlinedActionAutofilter({Color? color, double? width, double? height}) => load('outlined-action-autofilter', color, width, height);
  Widget outlinedActionCalendar({Color? color, double? width, double? height}) => load('outlined-action-calendar', color, width, height);
  Widget outlinedActionCamerachange({Color? color, double? width, double? height}) => load('outlined-action-camerachange', color, width, height);
  Widget outlinedActionCancel({Color? color, double? width, double? height}) => load('outlined-action-cancel', color, width, height);
  Widget outlinedActionChange({Color? color, double? width, double? height}) => load('outlined-action-change', color, width, height);
  Widget outlinedActionCheck({Color? color, double? width, double? height}) => load('outlined-action-check', color, width, height);
  Widget outlinedActionClock({Color? color, double? width, double? height}) => load('outlined-action-clock', color, width, height);
  Widget outlinedActionClosedbox({Color? color, double? width, double? height}) => load('outlined-action-closedbox', color, width, height);
  Widget outlinedActionCopy({Color? color, double? width, double? height}) => load('outlined-action-copy', color, width, height);
  Widget outlinedActionCopylink({Color? color, double? width, double? height}) => load('outlined-action-copylink', color, width, height);
  Widget outlinedActionCycle({Color? color, double? width, double? height}) => load('outlined-action-cycle', color, width, height);
  Widget outlinedActionDelete({Color? color, double? width, double? height}) => load('outlined-action-delete', color, width, height);
  Widget outlinedActionDone({Color? color, double? width, double? height}) => load('outlined-action-done', color, width, height);
  Widget outlinedActionDownload({Color? color, double? width, double? height}) => load('outlined-action-download', color, width, height);
  Widget outlinedActionEdit({Color? color, double? width, double? height}) => load('outlined-action-edit', color, width, height);
  Widget outlinedActionFavorite({Color? color, double? width, double? height}) => load('outlined-action-favorite', color, width, height);
  Widget outlinedActionFilter({Color? color, double? width, double? height}) => load('outlined-action-filter', color, width, height);
  Widget outlinedActionFrame({Color? color, double? width, double? height}) => load('outlined-action-frame', color, width, height);
  Widget outlinedActionGridsquare({Color? color, double? width, double? height}) => load('outlined-action-gridsquare', color, width, height);
  Widget outlinedActionHelp({Color? color, double? width, double? height}) => load('outlined-action-help', color, width, height);
  Widget outlinedActionHistory({Color? color, double? width, double? height}) => load('outlined-action-history', color, width, height);
  Widget outlinedActionLightoff({Color? color, double? width, double? height}) => load('outlined-action-lightoff', color, width, height);
  Widget outlinedActionLighton({Color? color, double? width, double? height}) => load('outlined-action-lighton', color, width, height);
  Widget outlinedActionLike({Color? color, double? width, double? height}) => load('outlined-action-like', color, width, height);
  Widget outlinedActionList({Color? color, double? width, double? height}) => load('outlined-action-list', color, width, height);
  Widget outlinedActionLove({Color? color, double? width, double? height}) => load('outlined-action-love', color, width, height);
  Widget outlinedActionMic({Color? color, double? width, double? height}) => load('outlined-action-mic', color, width, height);
  Widget outlinedActionMicrec({Color? color, double? width, double? height}) => load('outlined-action-micrec', color, width, height);
  Widget outlinedActionNewregister({Color? color, double? width, double? height}) => load('outlined-action-newregister', color, width, height);
  Widget outlinedActionNewrequest({Color? color, double? width, double? height}) => load('outlined-action-newrequest', color, width, height);
  Widget outlinedActionOrder({Color? color, double? width, double? height}) => load('outlined-action-order', color, width, height);
  Widget outlinedActionPhone({Color? color, double? width, double? height}) => load('outlined-action-phone', color, width, height);
  Widget outlinedActionPrint({Color? color, double? width, double? height}) => load('outlined-action-print', color, width, height);
  Widget outlinedActionQr({Color? color, double? width, double? height}) => load('outlined-action-qr', color, width, height);
  Widget outlinedActionRating({Color? color, double? width, double? height}) => load('outlined-action-rating', color, width, height);
  Widget outlinedActionRecycle({Color? color, double? width, double? height}) => load('outlined-action-recycle', color, width, height);
  Widget outlinedActionRequest({Color? color, double? width, double? height}) => load('outlined-action-request', color, width, height);
  Widget outlinedActionRequestspecial({Color? color, double? width, double? height}) => load('outlined-action-requestspecial', color, width, height);
  Widget outlinedActionRunningclock({Color? color, double? width, double? height}) => load('outlined-action-runningclock', color, width, height);
  Widget outlinedActionSave({Color? color, double? width, double? height}) => load('outlined-action-save', color, width, height);
  Widget outlinedActionSchedule({Color? color, double? width, double? height}) => load('outlined-action-schedule', color, width, height);
  Widget outlinedActionSearch({Color? color, double? width, double? height}) => load('outlined-action-search', color, width, height);
  Widget outlinedActionSelectedalllines({Color? color, double? width, double? height}) => load('outlined-action-selectedalllines', color, width, height);
  Widget outlinedActionSend({Color? color, double? width, double? height}) => load('outlined-action-send', color, width, height);
  Widget outlinedActionSettings({Color? color, double? width, double? height}) => load('outlined-action-settings', color, width, height);
  Widget outlinedActionShare({Color? color, double? width, double? height}) => load('outlined-action-share', color, width, height);
  Widget outlinedActionShareios({Color? color, double? width, double? height}) => load('outlined-action-shareios', color, width, height);
  Widget outlinedActionSubtract({Color? color, double? width, double? height}) => load('outlined-action-subtract', color, width, height);
  Widget outlinedActionText({Color? color, double? width, double? height}) => load('outlined-action-text', color, width, height);
  Widget outlinedActionUpdate({Color? color, double? width, double? height}) => load('outlined-action-update', color, width, height);
  Widget outlinedActionUpload({Color? color, double? width, double? height}) => load('outlined-action-upload', color, width, height);
  Widget outlinedActionVisibility({Color? color, double? width, double? height}) => load('outlined-action-visibility', color, width, height);
  Widget outlinedActionVisibilityoff({Color? color, double? width, double? height}) => load('outlined-action-visibilityoff', color, width, height);
  Widget outlinedAlertCancel({Color? color, double? width, double? height}) => load('outlined-alert-cancel', color, width, height);
  Widget outlinedAlertCheck({Color? color, double? width, double? height}) => load('outlined-alert-check', color, width, height);
  Widget outlinedAlertEmpty({Color? color, double? width, double? height}) => load('outlined-alert-empty', color, width, height);
  Widget outlinedAlertIndeterminate({Color? color, double? width, double? height}) => load('outlined-alert-indeterminate', color, width, height);
  Widget outlinedAlertInfo({Color? color, double? width, double? height}) => load('outlined-alert-info', color, width, height);
  Widget outlinedAlertNotification({Color? color, double? width, double? height}) => load('outlined-alert-notification', color, width, height);
  Widget outlinedAlertNotificationsbadge({Color? color, double? width, double? height}) => load('outlined-alert-notificationsbadge', color, width, height);
  Widget outlinedAlertWarning({Color? color, double? width, double? height}) => load('outlined-alert-warning', color, width, height);
  Widget outlinedCommunicationChat({Color? color, double? width, double? height}) => load('outlined-communication-chat', color, width, height);
  Widget outlinedCommunicationEmail({Color? color, double? width, double? height}) => load('outlined-communication-email', color, width, height);
  Widget outlinedCommunicationHelp({Color? color, double? width, double? height}) => load('outlined-communication-help', color, width, height);
  Widget outlinedCommunicationMessage({Color? color, double? width, double? height}) => load('outlined-communication-message', color, width, height);
  Widget outlinedCommunicationOccurrence({Color? color, double? width, double? height}) => load('outlined-communication-occurrence', color, width, height);
  Widget outlinedCommunicationPhoneringing({Color? color, double? width, double? height}) => load('outlined-communication-phoneringing', color, width, height);
  Widget outlinedCommunicationReademail({Color? color, double? width, double? height}) => load('outlined-communication-reademail', color, width, height);
  Widget outlinedCommunicationSignal({Color? color, double? width, double? height}) => load('outlined-communication-signal', color, width, height);
  Widget outlinedCommunicationSpeaker({Color? color, double? width, double? height}) => load('outlined-communication-speaker', color, width, height);
  Widget outlinedCommunicationTreatment({Color? color, double? width, double? height}) => load('outlined-communication-treatment', color, width, height);
  Widget outlinedContentAdddocument({Color? color, double? width, double? height}) => load('outlined-content-adddocument', color, width, height);
  Widget outlinedContentAgility({Color? color, double? width, double? height}) => load('outlined-content-agility', color, width, height);
  Widget outlinedContentAsleep({Color? color, double? width, double? height}) => load('outlined-content-asleep', color, width, height);
  Widget outlinedContentBellringing({Color? color, double? width, double? height}) => load('outlined-content-bellringing', color, width, height);
  Widget outlinedContentBook({Color? color, double? width, double? height}) => load('outlined-content-book', color, width, height);
  Widget outlinedContentBrightness({Color? color, double? width, double? height}) => load('outlined-content-brightness', color, width, height);
  Widget outlinedContentChangeview({Color? color, double? width, double? height}) => load('outlined-content-changeview', color, width, height);
  Widget outlinedContentChannel({Color? color, double? width, double? height}) => load('outlined-content-channel', color, width, height);
  Widget outlinedContentChristmascard({Color? color, double? width, double? height}) => load('outlined-content-christmascard', color, width, height);
  Widget outlinedContentCloud({Color? color, double? width, double? height}) => load('outlined-content-cloud', color, width, height);
  Widget outlinedContentConsistency({Color? color, double? width, double? height}) => load('outlined-content-consistency', color, width, height);
  Widget outlinedContentDivulgation({Color? color, double? width, double? height}) => load('outlined-content-divulgation', color, width, height);
  Widget outlinedContentEducation({Color? color, double? width, double? height}) => load('outlined-content-education', color, width, height);
  Widget outlinedContentExchangereports({Color? color, double? width, double? height}) => load('outlined-content-exchangereports', color, width, height);
  Widget outlinedContentFlower({Color? color, double? width, double? height}) => load('outlined-content-flower', color, width, height);
  Widget outlinedContentFragrance({Color? color, double? width, double? height}) => load('outlined-content-fragrance', color, width, height);
  Widget outlinedContentGallery({Color? color, double? width, double? height}) => load('outlined-content-gallery', color, width, height);
  Widget outlinedContentGift({Color? color, double? width, double? height}) => load('outlined-content-gift', color, width, height);
  Widget outlinedContentGlobal({Color? color, double? width, double? height}) => load('outlined-content-global', color, width, height);
  Widget outlinedContentHandbag({Color? color, double? width, double? height}) => load('outlined-content-handbag', color, width, height);
  Widget outlinedContentHandcare({Color? color, double? width, double? height}) => load('outlined-content-handcare', color, width, height);
  Widget outlinedContentHandglobal({Color? color, double? width, double? height}) => load('outlined-content-handglobal', color, width, height);
  Widget outlinedContentHands({Color? color, double? width, double? height}) => load('outlined-content-hands', color, width, height);
  Widget outlinedContentHealth({Color? color, double? width, double? height}) => load('outlined-content-health', color, width, height);
  Widget outlinedContentHealthy({Color? color, double? width, double? height}) => load('outlined-content-healthy', color, width, height);
  Widget outlinedContentIndicator({Color? color, double? width, double? height}) => load('outlined-content-indicator', color, width, height);
  Widget outlinedContentItemlist({Color? color, double? width, double? height}) => load('outlined-content-itemlist', color, width, height);
  Widget outlinedContentLeafs({Color? color, double? width, double? height}) => load('outlined-content-leafs', color, width, height);
  Widget outlinedContentLifebuoy({Color? color, double? width, double? height}) => load('outlined-content-lifebuoy', color, width, height);
  Widget outlinedContentLock({Color? color, double? width, double? height}) => load('outlined-content-lock', color, width, height);
  Widget outlinedContentMagic({Color? color, double? width, double? height}) => load('outlined-content-magic', color, width, height);
  Widget outlinedContentMaintenance({Color? color, double? width, double? height}) => load('outlined-content-maintenance', color, width, height);
  Widget outlinedContentMedal({Color? color, double? width, double? height}) => load('outlined-content-medal', color, width, height);
  Widget outlinedContentMenu({Color? color, double? width, double? height}) => load('outlined-content-menu', color, width, height);
  Widget outlinedContentMirror({Color? color, double? width, double? height}) => load('outlined-content-mirror', color, width, height);
  Widget outlinedContentPassword({Color? color, double? width, double? height}) => load('outlined-content-password', color, width, height);
  Widget outlinedContentPlanb({Color? color, double? width, double? height}) => load('outlined-content-planb', color, width, height);
  Widget outlinedContentProductshowcase({Color? color, double? width, double? height}) => load('outlined-content-productshowcase', color, width, height);
  Widget outlinedContentProdutivity({Color? color, double? width, double? height}) => load('outlined-content-produtivity', color, width, height);
  Widget outlinedContentRainycloud({Color? color, double? width, double? height}) => load('outlined-content-rainycloud', color, width, height);
  Widget outlinedContentReport({Color? color, double? width, double? height}) => load('outlined-content-report', color, width, height);
  Widget outlinedContentSaleinsight({Color? color, double? width, double? height}) => load('outlined-content-saleinsight', color, width, height);
  Widget outlinedContentSnow({Color? color, double? width, double? height}) => load('outlined-content-snow', color, width, height);
  Widget outlinedContentStore({Color? color, double? width, double? height}) => load('outlined-content-store', color, width, height);
  Widget outlinedContentSun({Color? color, double? width, double? height}) => load('outlined-content-sun', color, width, height);
  Widget outlinedContentSunandcloud({Color? color, double? width, double? height}) => load('outlined-content-sunandcloud', color, width, height);
  Widget outlinedContentUnavailable({Color? color, double? width, double? height}) => load('outlined-content-unavailable', color, width, height);
  Widget outlinedContentVirtualmirror({Color? color, double? width, double? height}) => load('outlined-content-virtualmirror', color, width, height);
  Widget outlinedContentWellness({Color? color, double? width, double? height}) => load('outlined-content-wellness', color, width, height);
  Widget outlinedContentWifi({Color? color, double? width, double? height}) => load('outlined-content-wifi', color, width, height);
  Widget outlinedDefaultMockup({Color? color, double? width, double? height}) => load('outlined-default-mockup', color, width, height);
  Widget outlinedFinanceBag({Color? color, double? width, double? height}) => load('outlined-finance-bag', color, width, height);
  Widget outlinedFinanceBank({Color? color, double? width, double? height}) => load('outlined-finance-bank', color, width, height);
  Widget outlinedFinanceCards({Color? color, double? width, double? height}) => load('outlined-finance-cards', color, width, height);
  Widget outlinedFinanceCharging({Color? color, double? width, double? height}) => load('outlined-finance-charging', color, width, height);
  Widget outlinedFinanceCreditcard({Color? color, double? width, double? height}) => load('outlined-finance-creditcard', color, width, height);
  Widget outlinedFinanceDebit({Color? color, double? width, double? height}) => load('outlined-finance-debit', color, width, height);
  Widget outlinedFinanceDiscount({Color? color, double? width, double? height}) => load('outlined-finance-discount', color, width, height);
  Widget outlinedFinanceIdcard({Color? color, double? width, double? height}) => load('outlined-finance-idcard', color, width, height);
  Widget outlinedFinanceInvoice({Color? color, double? width, double? height}) => load('outlined-finance-invoice', color, width, height);
  Widget outlinedFinanceLittlemachine({Color? color, double? width, double? height}) => load('outlined-finance-littlemachine', color, width, height);
  Widget outlinedFinanceMoney({Color? color, double? width, double? height}) => load('outlined-finance-money', color, width, height);
  Widget outlinedFinanceMoneypaper({Color? color, double? width, double? height}) => load('outlined-finance-moneypaper', color, width, height);
  Widget outlinedFinancePaid({Color? color, double? width, double? height}) => load('outlined-finance-paid', color, width, height);
  Widget outlinedFinancePaymentlink({Color? color, double? width, double? height}) => load('outlined-finance-paymentlink', color, width, height);
  Widget outlinedFinancePaymentnotapproved({Color? color, double? width, double? height}) => load('outlined-finance-paymentnotapproved', color, width, height);
  Widget outlinedFinancePayreference({Color? color, double? width, double? height}) => load('outlined-finance-payreference', color, width, height);
  Widget outlinedFinancePromotion({Color? color, double? width, double? height}) => load('outlined-finance-promotion', color, width, height);
  Widget outlinedFinanceScancard({Color? color, double? width, double? height}) => load('outlined-finance-scancard', color, width, height);
  Widget outlinedFinanceShoppingcart({Color? color, double? width, double? height}) => load('outlined-finance-shoppingcart', color, width, height);
  Widget outlinedFinanceShoppingcartproduct({Color? color, double? width, double? height}) => load('outlined-finance-shoppingcartproduct', color, width, height);
  Widget outlinedFinanceSuitcase({Color? color, double? width, double? height}) => load('outlined-finance-suitcase', color, width, height);
  Widget outlinedFinanceTagdiscount({Color? color, double? width, double? height}) => load('outlined-finance-tagdiscount', color, width, height);
  Widget outlinedFinanceTransfermoney({Color? color, double? width, double? height}) => load('outlined-finance-transfermoney', color, width, height);
  Widget outlinedMakeupEyebrow({Color? color, double? width, double? height}) => load('outlined-makeup-eyebrow', color, width, height);
  Widget outlinedMakeupEyelashes({Color? color, double? width, double? height}) => load('outlined-makeup-eyelashes', color, width, height);
  Widget outlinedMakeupEyeliner({Color? color, double? width, double? height}) => load('outlined-makeup-eyeliner', color, width, height);
  Widget outlinedMakeupFace({Color? color, double? width, double? height}) => load('outlined-makeup-face', color, width, height);
  Widget outlinedMakeupMouth({Color? color, double? width, double? height}) => load('outlined-makeup-mouth', color, width, height);
  Widget outlinedMediaApp({Color? color, double? width, double? height}) => load('outlined-media-app', color, width, height);
  Widget outlinedMediaCamera({Color? color, double? width, double? height}) => load('outlined-media-camera', color, width, height);
  Widget outlinedMediaCameraunavailable({Color? color, double? width, double? height}) => load('outlined-media-cameraunavailable', color, width, height);
  Widget outlinedMediaMonitor({Color? color, double? width, double? height}) => load('outlined-media-monitor', color, width, height);
  Widget outlinedMediaPlay({Color? color, double? width, double? height}) => load('outlined-media-play', color, width, height);
  Widget outlinedNavigationArrowbottom({Color? color, double? width, double? height}) => load('outlined-navigation-arrowbottom', color, width, height);
  Widget outlinedNavigationArrowleft({Color? color, double? width, double? height}) => load('outlined-navigation-arrowleft', color, width, height);
  Widget outlinedNavigationArrowright({Color? color, double? width, double? height}) => load('outlined-navigation-arrowright', color, width, height);
  Widget outlinedNavigationArrowtop({Color? color, double? width, double? height}) => load('outlined-navigation-arrowtop', color, width, height);
  Widget outlinedNavigationClose({Color? color, double? width, double? height}) => load('outlined-navigation-close', color, width, height);
  Widget outlinedNavigationDirectionbottom({Color? color, double? width, double? height}) => load('outlined-navigation-directionbottom', color, width, height);
  Widget outlinedNavigationDirectionleft({Color? color, double? width, double? height}) => load('outlined-navigation-directionleft', color, width, height);
  Widget outlinedNavigationDirectionright({Color? color, double? width, double? height}) => load('outlined-navigation-directionright', color, width, height);
  Widget outlinedNavigationDirectiontop({Color? color, double? width, double? height}) => load('outlined-navigation-directiontop', color, width, height);
  Widget outlinedNavigationExit({Color? color, double? width, double? height}) => load('outlined-navigation-exit', color, width, height);
  Widget outlinedNavigationGoback({Color? color, double? width, double? height}) => load('outlined-navigation-goback', color, width, height);
  Widget outlinedNavigationGofront({Color? color, double? width, double? height}) => load('outlined-navigation-gofront', color, width, height);
  Widget outlinedNavigationHome({Color? color, double? width, double? height}) => load('outlined-navigation-home', color, width, height);
  Widget outlinedNavigationMenu({Color? color, double? width, double? height}) => load('outlined-navigation-menu', color, width, height);
  Widget outlinedPlaceBus({Color? color, double? width, double? height}) => load('outlined-place-bus', color, width, height);
  Widget outlinedPlaceForklift({Color? color, double? width, double? height}) => load('outlined-place-forklift', color, width, height);
  Widget outlinedPlaceGps({Color? color, double? width, double? height}) => load('outlined-place-gps', color, width, height);
  Widget outlinedPlaceLocal({Color? color, double? width, double? height}) => load('outlined-place-local', color, width, height);
  Widget outlinedPlaceRocket({Color? color, double? width, double? height}) => load('outlined-place-rocket', color, width, height);
  Widget outlinedPlaceRunningtruck({Color? color, double? width, double? height}) => load('outlined-place-runningtruck', color, width, height);
  Widget outlinedPlaceTruck({Color? color, double? width, double? height}) => load('outlined-place-truck', color, width, height);
  Widget outlinedPlaceWaze({Color? color, double? width, double? height}) => load('outlined-place-waze', color, width, height);
  Widget outlinedProductAbandonedbag({Color? color, double? width, double? height}) => load('outlined-product-abandonedbag', color, width, height);
  Widget outlinedProductAccessories({Color? color, double? width, double? height}) => load('outlined-product-accessories', color, width, height);
  Widget outlinedProductBagproduct({Color? color, double? width, double? height}) => load('outlined-product-bagproduct', color, width, height);
  Widget outlinedProductBeard({Color? color, double? width, double? height}) => load('outlined-product-beard', color, width, height);
  Widget outlinedProductBrandsproduct({Color? color, double? width, double? height}) => load('outlined-product-brandsproduct', color, width, height);
  Widget outlinedProductChildish({Color? color, double? width, double? height}) => load('outlined-product-childish', color, width, height);
  Widget outlinedProductDailycare({Color? color, double? width, double? height}) => load('outlined-product-dailycare', color, width, height);
  Widget outlinedProductEkos({Color? color, double? width, double? height}) => load('outlined-product-ekos', color, width, height);
  Widget outlinedProductErlenmeyer({Color? color, double? width, double? height}) => load('outlined-product-erlenmeyer', color, width, height);
  Widget outlinedProductFace({Color? color, double? width, double? height}) => load('outlined-product-face', color, width, height);
  Widget outlinedProductHair({Color? color, double? width, double? height}) => load('outlined-product-hair', color, width, height);
  Widget outlinedProductLashes({Color? color, double? width, double? height}) => load('outlined-product-lashes', color, width, height);
  Widget outlinedProductLiner({Color? color, double? width, double? height}) => load('outlined-product-liner', color, width, height);
  Widget outlinedProductLipgloss({Color? color, double? width, double? height}) => load('outlined-product-lipgloss', color, width, height);
  Widget outlinedProductMakeup({Color? color, double? width, double? height}) => load('outlined-product-makeup', color, width, height);
  Widget outlinedProductOutlet({Color? color, double? width, double? height}) => load('outlined-product-outlet', color, width, height);
  Widget outlinedProductPencil({Color? color, double? width, double? height}) => load('outlined-product-pencil', color, width, height);
  Widget outlinedProductPerfumery({Color? color, double? width, double? height}) => load('outlined-product-perfumery', color, width, height);
  Widget outlinedProductPerfumeryfeminine({Color? color, double? width, double? height}) => load('outlined-product-perfumeryfeminine', color, width, height);
  Widget outlinedProductPerfumerymasculine({Color? color, double? width, double? height}) => load('outlined-product-perfumerymasculine', color, width, height);
  Widget outlinedProductPerfumerytbs({Color? color, double? width, double? height}) => load('outlined-product-perfumerytbs', color, width, height);
  Widget outlinedProductPowder({Color? color, double? width, double? height}) => load('outlined-product-powder', color, width, height);
  Widget outlinedProductPrimer({Color? color, double? width, double? height}) => load('outlined-product-primer', color, width, height);
  Widget outlinedProductPromotionproduct({Color? color, double? width, double? height}) => load('outlined-product-promotionproduct', color, width, height);
  Widget outlinedProductRelatedproducts({Color? color, double? width, double? height}) => load('outlined-product-relatedproducts', color, width, height);
  Widget outlinedProductRepurchase({Color? color, double? width, double? height}) => load('outlined-product-repurchase', color, width, height);
  Widget outlinedProductScent({Color? color, double? width, double? height}) => load('outlined-product-scent', color, width, height);
  Widget outlinedProductVegan({Color? color, double? width, double? height}) => load('outlined-product-vegan', color, width, height);
  Widget outlinedSocialAddcontact({Color? color, double? width, double? height}) => load('outlined-social-addcontact', color, width, height);
  Widget outlinedSocialBirthday({Color? color, double? width, double? height}) => load('outlined-social-birthday', color, width, height);
  Widget outlinedSocialCollaborate({Color? color, double? width, double? height}) => load('outlined-social-collaborate', color, width, height);
  Widget outlinedSocialContact({Color? color, double? width, double? height}) => load('outlined-social-contact', color, width, height);
  Widget outlinedSocialDigitalconsultant({Color? color, double? width, double? height}) => load('outlined-social-digitalconsultant', color, width, height);
  Widget outlinedSocialGroupofpeople({Color? color, double? width, double? height}) => load('outlined-social-groupofpeople', color, width, height);
  Widget outlinedSocialManagement({Color? color, double? width, double? height}) => load('outlined-social-management', color, width, height);
  Widget outlinedSocialMyprofile({Color? color, double? width, double? height}) => load('outlined-social-myprofile', color, width, height);
  Widget outlinedSocialNetwork({Color? color, double? width, double? height}) => load('outlined-social-network', color, width, height);
  Widget outlinedSocialPerson({Color? color, double? width, double? height}) => load('outlined-social-person', color, width, height);
}