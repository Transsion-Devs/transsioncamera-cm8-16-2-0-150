.class public abstract Lcom/transsion/camera/app/PermissionActivity;
.super Lcom/transsion/camera/app/QuickActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isShowSatelliteDialog:Z

.field private mActivityState:I

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mIsDialogShow:Z

.field private mIsFinishedActivityForSatellite:Z

.field private mIsPermissionRequested:Z

.field protected mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$2JZM89Yv3plHypZpjhN57i9BiX4(Landroid/content/res/Resources;Landroid/content/DialogInterface;)V
    .registers 3

    .line 409
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 410
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 411
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4xhCvW2Nk1iRGzj138QToyK7Z8Y(Lcom/transsion/camera/app/PermissionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/PermissionActivity;->lambda$showSatelliteDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A6EliKSC4A7_SV2Elr02FBzRdhE(Lcom/transsion/camera/app/PermissionActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/PermissionActivity;->lambda$showSatelliteDialog$5(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bOE2vOYbH-GiEHvKt_VbuHSL6q8(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 344
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$eQrnGq1xt9yS1cb1SJWMuYcKJEk(Lcom/transsion/camera/app/PermissionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/PermissionActivity;->lambda$showGotoInstallGalleryOthers$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTDInRm8VU3EQZbq6bGfMMcG1P4(Lcom/transsion/camera/app/PermissionActivity;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/PermissionActivity;->lambda$showSatelliteDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lhw65D9op7Qu4ZvgERNmi9UsIsU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 383
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PermissionActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;-><init>()V

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsPermissionRequested:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    return-void
.end method

.method private hasDenyAndNeverShowDialog(Ljava/util/List;)Z
    .registers 8

    .line 330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    .line 332
    sget-object v3, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasDenyAndNeverShowDialog result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,deniedPermission:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method private hideDialog()V
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_7

    .line 417
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->hide()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$showGotoInstallGalleryOthers$1(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 346
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result p2

    if-nez p2, :cond_12

    .line 347
    const-string p2, "keyguard"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p2, p0, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 350
    :cond_12
    new-instance p2, Landroid/content/Intent;

    const-string v0, "market://details?id=com.google.android.apps.photos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 351
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    invoke-static {p0, p2}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 354
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showSatelliteDialog$2(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 372
    sget-object p1, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "click button and finish activity."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 373
    iput-boolean p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsFinishedActivityForSatellite:Z

    .line 374
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->hideDialog()V

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showSatelliteDialog$4(Landroid/content/DialogInterface;)V
    .registers 2

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 383
    new-instance p1, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic lambda$showSatelliteDialog$5(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x4

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1a

    .line 386
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1a

    .line 387
    sget-object p1, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "press back and finish activity."

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iput-boolean p2, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsFinishedActivityForSatellite:Z

    .line 389
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->hideDialog()V

    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1a
    return v0
.end method

.method private showDialogMsg()Ljava/lang/String;
    .registers 3

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_function_permission_head"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "location_setting_title"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 159
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showLocationPermissionsRequest()Z
    .registers 4

    .line 112
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 113
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    .line 114
    :cond_13
    :goto_13
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showDialogMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 117
    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/PermissionActivity$1;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_go_setting"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$2;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 139
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 140
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/PermissionActivity;->updateDialogWindowBg(Lcom/transsion/widgetslib/dialog/PromptDialog;)V

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private showSatelliteDialog()V
    .registers 5

    .line 369
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "satellite_mode_can_not_enter_camera"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "satellite_mode_positive_text"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 378
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    const/4 v1, 0x0

    .line 379
    iput-boolean v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsFinishedActivityForSatellite:Z

    .line 380
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_52

    return-void

    .line 402
    :cond_52
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 403
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 404
    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 405
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 406
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/PermissionActivity;->traverseTextViews(Landroid/view/View;F)V

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v0, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda3;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private traverseTextViews(Landroid/view/View;F)V
    .registers 5

    .line 422
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 423
    check-cast p1, Landroid/widget/TextView;

    const/4 p0, 0x2

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 424
    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    .line 425
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 426
    :goto_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/PermissionActivity;->traverseTextViews(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method private updateDialogWindowBg(Lcom/transsion/widgetslib/dialog/PromptDialog;)V
    .registers 3

    .line 148
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1f

    .line 151
    :cond_d
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 152
    sget p0, Lcom/transsion/camera/app/common/R$drawable;->pad_dialog_night_round_corner:I

    goto :goto_1c

    .line 153
    :cond_1a
    sget p0, Lcom/transsion/camera/app/common/R$drawable;->pad_dialog_round_corner:I

    .line 151
    :goto_1c
    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method protected canShowPermissionsDialog()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public checkCameraLocationPermissions()Z
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz p0, :cond_9

    .line 362
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract onCreateTasks(Landroid/os/Bundle;)V
.end method

.method protected abstract onDestroyTasks()V
.end method

.method protected onPauseTasks()V
    .registers 1

    return-void
.end method

.method protected onPermissionCreateTasks(Landroid/os/Bundle;)V
    .registers 3

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 191
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    if-nez v0, :cond_c

    .line 192
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 193
    iput p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_c
    return-void
.end method

.method protected onPermissionDestroyTasks()V
    .registers 3

    .line 262
    invoke-static {}, Lcom/transsion/camera/app/common/permission/PermissionManager;->clearCameraLocationPermissionRequesting()V

    .line 263
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onDestroyTasks()V

    .line 265
    iput v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_d
    return-void
.end method

.method protected onPermissionOnPreCreatedTask()V
    .registers 3

    .line 169
    new-instance v0, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    .line 172
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isSatelliteNetworksState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showSatelliteDialog()V

    const/4 v1, 0x1

    .line 174
    iput-boolean v1, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    .line 177
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    if-nez v1, :cond_27

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPreCreateTasks()V

    .line 179
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_27
    return-void
.end method

.method protected onPermissionPauseTasks()V
    .registers 3

    .line 242
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPauseTasks()V

    const/4 v0, 0x3

    .line 244
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_b
    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    .line 247
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsPermissionRequested:Z

    return-void
.end method

.method protected onPermissionRestartTasks()V
    .registers 2

    .line 199
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isSatelliteNetworksState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showSatelliteDialog()V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    goto :goto_14

    .line 202
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    if-eqz v0, :cond_14

    .line 203
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->hideDialog()V

    .line 206
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onRestartTasks()V

    return-void
.end method

.method protected onPermissionResumeTasks()V
    .registers 4

    .line 221
    invoke-super {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionResumeTasks()V

    .line 222
    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    if-eqz v0, :cond_c

    goto :goto_3c

    .line 227
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_25

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_24
    return-void

    .line 232
    :cond_25
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPreCreateTasks()V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    :cond_32
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onResumeTasks()V

    const/4 v0, 0x2

    .line 238
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    return-void

    .line 223
    :cond_3c
    :goto_3c
    sget-object v0, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return because mIsDialogShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isShowSatelliteDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onPermissionStartTasks()V
    .registers 3

    .line 210
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/PermissionActivity;->showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    return-void

    .line 217
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    return-void
.end method

.method protected onPermissionStopTasks()V
    .registers 2

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    .line 252
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStopTasks()V

    .line 254
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isSatelliteNetworksState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsFinishedActivityForSatellite:Z

    if-nez v0, :cond_17

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_17
    return-void
.end method

.method protected onPreCreateTasks()V
    .registers 1

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .line 83
    sget-object v0, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult(), grantResults = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getCameraLocationPermissionRequestCode()I

    move-result v0

    if-ne v0, p1, :cond_24

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/common/permission/PermissionManager;->clearCameraLocationPermissionRequesting()V

    .line 87
    :cond_24
    array-length v0, p3

    if-gtz v0, :cond_28

    goto :goto_70

    .line 90
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyPermissions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/PermissionActivity;->hasDenyAndNeverShowDialog(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/PermissionActivity;->showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    return-void

    .line 95
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getCameraLaunchPermissionRequestCode()I

    move-result v0

    if-ne v0, p1, :cond_57

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0, p2, p3}, Lcom/transsion/camera/app/common/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p2

    if-nez p2, :cond_57

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 104
    :cond_57
    iget-object p2, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz p2, :cond_70

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getCameraLocationPermissionRequestCode()I

    move-result p2

    if-ne p2, p1, :cond_70

    iget-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 105
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyLocationPermissions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/PermissionActivity;->hasDenyAndNeverShowDialog(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showLocationPermissionsRequest()Z

    :cond_70
    :goto_70
    return-void
.end method

.method protected onRestartTasks()V
    .registers 1

    return-void
.end method

.method protected onResumeTasks()V
    .registers 1

    return-void
.end method

.method protected onStartTasks()V
    .registers 1

    return-void
.end method

.method protected abstract onStopTasks()V
.end method

.method protected showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V
    .registers 5

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    .line 316
    new-instance v0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    .line 317
    invoke-virtual {v0}, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->showDialogFragment()V

    return-void
.end method

.method protected showGotoInstallGalleryOthers()V
    .registers 4

    .line 341
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "need_gallery_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "need_gallery_content"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 344
    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda5;-><init>()V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "goto_install"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 356
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 357
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method
