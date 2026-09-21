.class public Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mRootLayout:Landroid/view/View;

.field private mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/TabLayout;Landroid/content/Context;)V
    .registers 5

    .line 1340
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 1341
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1346
    iget p2, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingStart:I

    iget v0, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingTop:I

    iget v1, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingEnd:I

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, p1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    .line 1348
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x1

    .line 1349
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1350
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1352
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 1351
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void
.end method

.method private updateUI()V
    .registers 9

    .line 1490
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 1491
    :goto_b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    .line 1493
    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1494
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_60

    .line 1495
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1496
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_41

    .line 1498
    :cond_36
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/widget/TabLayout;->-$$Nest$fgetmModeItemTextAllCaps(Lcom/transsion/camera/app/ui/widget/TabLayout;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    :goto_41
    if-nez v3, :cond_51

    .line 1501
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1502
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b

    .line 1505
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1506
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    :goto_5b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1511
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getIsShowSellingPoint()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->img_selling_point_layer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_79

    .line 1514
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1516
    :cond_79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->img_selling_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    .line 1517
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_92

    .line 1518
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/R$drawable;->ic_picker_selling_point:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1520
    :cond_92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1521
    :cond_98
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_9f

    .line 1522
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9f
    return-void
.end method


# virtual methods
.method public getTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 1

    .line 1527
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    return-object p0
.end method

.method public initTabNormalTextColor()V
    .registers 3

    .line 1401
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->-$$Nest$fgetisOriginal(Lcom/transsion/camera/app/ui/widget/TabLayout;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1403
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 1405
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabTextAppearance:I

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public moreModeIconClick(ZZ)V
    .registers 5

    .line 1391
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 1392
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v1, :cond_13

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 1394
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1396
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->select(ZZ)V

    :cond_13
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 1428
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 1435
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1437
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    .line 1442
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1443
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1444
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1e

    if-eqz v1, :cond_14

    if-le v0, v2, :cond_1e

    .line 1452
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1459
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public performClick()Z
    .registers 6

    .line 1358
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 1359
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    const-string v2, "Cam_mode_sw.he"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1a

    .line 1362
    :cond_16
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 1365
    :goto_1a
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/TabLayout;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performClick, handled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mTab: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1366
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_44

    return v3

    .line 1369
    :cond_44
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->-$$Nest$fgetmActionIntercept(Lcom/transsion/camera/app/ui/widget/TabLayout;)Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;->onInterceptClick()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1370
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/TabLayout;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "performClick return, mActionIntercept.onInterceptClick()"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 1373
    :cond_60
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v2, :cond_6f

    if-nez v0, :cond_69

    .line 1375
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1377
    :cond_69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->select(ZZ)V

    return v1

    :cond_6f
    return v0
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 1470
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->setTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 1471
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 6

    .line 1411
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1415
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    .line 1416
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const-string v1, "#33000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    if-eqz p1, :cond_25

    .line 1419
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTabTextAppearance:I

    invoke-static {p1, p0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void

    .line 1421
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->initTabNormalTextColor()V

    :cond_28
    return-void
.end method

.method setTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .registers 3

    .line 1463
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_9

    .line 1464
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 1465
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->update()V

    :cond_9
    return-void
.end method

.method final update()V
    .registers 5

    .line 1475
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 1477
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 1478
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$layout;->mode_picker_tab_item:I

    .line 1479
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mRootLayout:Landroid/view/View;

    .line 1480
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1481
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mRootLayout:Landroid/view/View;

    sget v3, Lcom/transsion/camera/R$id;->tv_mode_item:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1484
    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->updateUI()V

    if-eqz v0, :cond_32

    .line 1486
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v2, 0x1

    :cond_32
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public updateRotation(F)V
    .registers 3

    .line 1385
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mRootLayout:Landroid/view/View;

    if-eqz p0, :cond_f

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1386
    :goto_c
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    :cond_f
    return-void
.end method
