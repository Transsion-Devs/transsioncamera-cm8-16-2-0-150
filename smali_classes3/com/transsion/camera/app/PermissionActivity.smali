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

    .line 392
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 393
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 394
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

    .line 327
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

    .line 366
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PermissionActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;-><init>()V

    const/4 v0, 0x4

    .line 57
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsPermissionRequested:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    return-void
.end method

.method private hasDenyAndNeverShowDialog(Ljava/util/List;)Z
    .registers 8

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    .line 315
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

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_7

    .line 400
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->hide()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$showGotoInstallGalleryOthers$1(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 329
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result p2

    if-nez p2, :cond_12

    .line 330
    const-string p2, "keyguard"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p2, p0, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 333
    :cond_12
    new-instance p2, Landroid/content/Intent;

    const-string v0, "market://details?id=com.google.android.apps.photos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 334
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    invoke-static {p0, p2}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 337
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showSatelliteDialog$2(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 355
    sget-object p1, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "click button and finish activity."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 356
    iput-boolean p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsFinishedActivityForSatellite:Z

    .line 357
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->hideDialog()V

    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showSatelliteDialog$4(Landroid/content/DialogInterface;)V
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 366
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

    .line 369
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1a

    .line 370
    sget-object p1, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "press back and finish activity."

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    iput-boolean p2, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsFinishedActivityForSatellite:Z

    .line 372
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->hideDialog()V

    .line 373
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1a
    return v0
.end method

.method private showDialogMsg()Ljava/lang/String;
    .registers 3

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_function_permission_head"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "location_setting_title"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showLocationPermissionsRequest()Z
    .registers 4

    .line 106
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 107
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    .line 108
    :cond_13
    :goto_13
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showDialogMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 111
    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/PermissionActivity$1;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_go_setting"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$2;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 133
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 134
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private showSatelliteDialog()V
    .registers 5

    .line 352
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "satellite_mode_can_not_enter_camera"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "satellite_mode_positive_text"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 361
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    const/4 v1, 0x0

    .line 362
    iput-boolean v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsFinishedActivityForSatellite:Z

    .line 363
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_52

    return-void

    .line 385
    :cond_52
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 386
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 387
    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 388
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 389
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/PermissionActivity;->traverseTextViews(Landroid/view/View;F)V

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSatelliteDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v0, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda3;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private traverseTextViews(Landroid/view/View;F)V
    .registers 5

    .line 405
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 406
    check-cast p1, Landroid/widget/TextView;

    const/4 p0, 0x2

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 407
    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    .line 408
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 409
    :goto_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/PermissionActivity;->traverseTextViews(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
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

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz p0, :cond_9

    .line 345
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

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 175
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    if-nez v0, :cond_c

    .line 176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 177
    iput p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_c
    return-void
.end method

.method protected onPermissionDestroyTasks()V
    .registers 3

    .line 246
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onDestroyTasks()V

    .line 248
    iput v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_a
    return-void
.end method

.method protected onPermissionOnPreCreatedTask()V
    .registers 3

    .line 153
    new-instance v0, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    .line 156
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isSatelliteNetworksState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 157
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showSatelliteDialog()V

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    .line 161
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    if-nez v1, :cond_27

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPreCreateTasks()V

    .line 163
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_27
    return-void
.end method

.method protected onPermissionPauseTasks()V
    .registers 3

    .line 226
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 227
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPauseTasks()V

    const/4 v0, 0x3

    .line 228
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_b
    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    .line 231
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsPermissionRequested:Z

    return-void
.end method

.method protected onPermissionRestartTasks()V
    .registers 2

    .line 183
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isSatelliteNetworksState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showSatelliteDialog()V

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    goto :goto_14

    .line 186
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    if-eqz v0, :cond_14

    .line 187
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->hideDialog()V

    .line 190
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onRestartTasks()V

    return-void
.end method

.method protected onPermissionResumeTasks()V
    .registers 4

    .line 205
    invoke-super {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionResumeTasks()V

    .line 206
    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    if-eqz v0, :cond_c

    goto :goto_3c

    .line 211
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_25

    .line 212
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_24
    return-void

    .line 216
    :cond_25
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPreCreateTasks()V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    :cond_32
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onResumeTasks()V

    const/4 v0, 0x2

    .line 222
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    return-void

    .line 207
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

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/PermissionActivity;->showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    return-void

    .line 201
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    return-void
.end method

.method protected onPermissionStopTasks()V
    .registers 2

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    .line 236
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStopTasks()V

    .line 238
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isSatelliteNetworksState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->isShowSatelliteDialog:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsFinishedActivityForSatellite:Z

    if-nez v0, :cond_17

    .line 241
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

    .line 80
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

    .line 81
    array-length v0, p3

    if-gtz v0, :cond_1b

    goto :goto_63

    .line 84
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyPermissions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/PermissionActivity;->hasDenyAndNeverShowDialog(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/PermissionActivity;->showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    return-void

    .line 89
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getCameraLaunchPermissionRequestCode()I

    move-result v0

    if-ne v0, p1, :cond_4a

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0, p2, p3}, Lcom/transsion/camera/app/common/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p2

    if-nez p2, :cond_4a

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 98
    :cond_4a
    iget-object p2, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz p2, :cond_63

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getCameraLocationPermissionRequestCode()I

    move-result p2

    if-ne p2, p1, :cond_63

    iget-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 99
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyLocationPermissions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/PermissionActivity;->hasDenyAndNeverShowDialog(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showLocationPermissionsRequest()Z

    :cond_63
    :goto_63
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

    .line 298
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    .line 299
    new-instance v0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    .line 300
    invoke-virtual {v0}, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->showDialogFragment()V

    return-void
.end method

.method protected showGotoInstallGalleryOthers()V
    .registers 4

    .line 324
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "need_gallery_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "need_gallery_content"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 327
    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda5;-><init>()V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "goto_install"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 339
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 340
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method
