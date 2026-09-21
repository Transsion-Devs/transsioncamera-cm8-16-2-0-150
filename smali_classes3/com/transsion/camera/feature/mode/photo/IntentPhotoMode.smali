.class public Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;,
        Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final CROP_INTENT:Ljava/lang/String; = "com.android.camera.action.CROP"

.field public static final EXTRA_PHOTO_CROP_VALUE:Ljava/lang/String; = "crop"

.field public static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final INLINED_DATA_INTENT:Ljava/lang/String; = "inline-data"

.field private static final INTENT_EXTRA_CIRCLE:Ljava/lang/String; = "circle"

.field private static final INTENT_EXTRA_CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field private static final INTENT_EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final INTENT_EXTRA_RETURN_DATA:Ljava/lang/String; = "return-data"

.field private static final MAX_NUMBER_PIXELS:I = 0xc800

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final TEMP_CROP_FILE_NAME:Ljava/lang/String; = "crop-temp"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final NEED_INTENT_APK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCropValue:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private final mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

.field private mIsQuickCapture:Z

.field private mJpegData:[B

.field private mKeyFlashValue:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;

.field private mZoomTickViewMarginOffset:I


# direct methods
.method static bridge synthetic -$$Nest$fgetNEED_INTENT_APK_LIST(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->NEED_INTENT_APK_LIST:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePath(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntentReviewUI(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJpegData(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyFlashValue(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmKeyFlashValue(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeFlashState(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Ljava/lang/String;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->changeFlashState(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoAttach(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->doAttach()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 102
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 81
    const-string p1, "com.google.android.youtube"

    const-string v0, "com.flipkart.android"

    const-string v1, "com.google.android.apps.youtube"

    const-string v2, "com.eterno.shortvideos"

    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->NEED_INTENT_APK_LIST:Ljava/util/List;

    .line 96
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mFilePath:Ljava/lang/String;

    .line 103
    new-instance p1, Lcom/transsion/camera/app/ui/IntentReviewUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/IntentReviewUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private attachToCropIntent()V
    .registers 5

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[attachToCropIntent]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->getTempUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[attachToCropIntent] return because temp uri is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 430
    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 431
    const-string v2, "circle"

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 432
    const-string v2, "circleCrop"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_33
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_3d

    .line 435
    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_43

    .line 437
    :cond_3d
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    :goto_43
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 441
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/16 v0, 0x3e8

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->transferIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private attachToInLinedIntent()V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[attachToInLinedIntent]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    invoke-static {v0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result v0

    .line 414
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 415
    invoke-static {v1, v0, v2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 416
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v0, -0x1

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private changeFlashState(Ljava/lang/String;Z)V
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 293
    invoke-static {}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 292
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    if-eqz p2, :cond_1a

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueSync(Ljava/lang/String;)V

    return-void

    .line 298
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method private doAttach()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_15

    .line 331
    new-instance v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;-><init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 333
    :cond_15
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->attachToInLinedIntent()V

    return-void

    .line 336
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->attachToCropIntent()V

    return-void
.end method

.method private getFlashKey()Ljava/lang/String;
    .registers 2

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 304
    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    return-object v0

    .line 307
    :cond_f
    const-string p0, "key_flash"

    return-object p0
.end method

.method private getTempUri()Landroid/net/Uri;
    .registers 6

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    .line 451
    :try_start_c
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_13} :catch_2f
    .catchall {:try_start_c .. :try_end_13} :catchall_2d

    .line 453
    :try_start_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 454
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 455
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_23
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_27

    :catchall_20
    move-exception p0

    move-object v2, v1

    goto :goto_36

    :catch_23
    move-exception p0

    .line 457
    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_27} :catch_2b
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    .line 462
    :goto_27
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_35

    :catch_2b
    move-exception p0

    goto :goto_31

    :catchall_2d
    move-exception p0

    goto :goto_36

    :catch_2f
    move-exception p0

    move-object v1, v2

    .line 460
    :goto_31
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_20

    goto :goto_27

    :goto_35
    return-object v2

    .line 462
    :goto_36
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 463
    throw p0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .registers 4

    const/4 v0, 0x3

    .line 316
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    const-string v0, "crop"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    .line 319
    const-string v0, "android.intent.extra.quickCapture"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIsQuickCapture:Z

    .line 320
    const-string v0, "output"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parseIntent]mCropValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mCropValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsQuickCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIsQuickCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSaveUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 178
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 498
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;
    .registers 2

    .line 503
    new-instance v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 9

    .line 508
    new-instance v0, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    .line 509
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v1, :cond_10

    .line 510
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_15X:I

    goto :goto_12

    :cond_10
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    .line 511
    :goto_12
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    if-eqz v2, :cond_1d

    .line 512
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    goto :goto_27

    .line 513
    :cond_1d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    if-eqz v2, :cond_27

    .line 514
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    .line 517
    :cond_27
    :goto_27
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsMainZoom3XSupported:Z

    if-eqz v2, :cond_2e

    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_3X:I

    goto :goto_30

    :cond_2e
    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    .line 519
    :goto_30
    new-instance v3, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    sget v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v3

    const/4 v5, 0x1

    .line 520
    invoke-virtual {v3, v4, v1, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v3

    const/4 v6, 0x2

    .line 521
    invoke-virtual {v3, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v3

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v3

    .line 519
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v3

    new-instance v7, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v7}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 522
    invoke-virtual {v7, v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v7

    .line 523
    invoke-virtual {v7, v2, v1, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 524
    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 522
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    .line 525
    invoke-virtual {v2, v4, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x80

    const/4 v4, 0x4

    const/16 v5, 0x8

    filled-new-array {v6, v4, v5, v2, v3}, [I

    move-result-object v2

    .line 526
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    .line 530
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    .line 529
    invoke-virtual {v1, v6, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setMarginOffset(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    iget p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mZoomTickViewMarginOffset:I

    .line 531
    invoke-virtual {v1, v4, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setMarginOffset(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0
.end method

.method public getDataFlowType()I
    .registers 2

    .line 184
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 185
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/16 p0, 0x8

    return p0

    .line 192
    :cond_15
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getDataFlowType()I

    move-result p0

    return p0
.end method

.method protected getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 3

    .line 538
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/16 v0, 0x8

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 11

    .line 138
    const-string v7, "key_lens_correction"

    const-string v8, "key_touch_capture"

    const-string v0, "key_edit_watermark"

    const-string v1, "key_gold_watermark"

    const-string v2, "key_pro_watermark"

    const-string v3, "key_super_flash"

    const-string v4, "key_eye_detection"

    const-string v5, "key_fingerprint_capture"

    const-string v6, "key_shutter_sound_optional"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 312
    invoke-static {}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getRealPathFromURI(Landroid/net/Uri;)V
    .registers 9

    .line 341
    const-string v0, "_data"

    if-nez p1, :cond_5

    goto :goto_30

    .line 345
    :cond_5
    :try_start_5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .line 347
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 349
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 350
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 351
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mFilePath:Ljava/lang/String;

    goto :goto_2d

    :catch_2a
    move-exception v0

    move-object p1, v0

    goto :goto_31

    .line 353
    :cond_2d
    :goto_2d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_2a

    :cond_30
    :goto_30
    return-void

    .line 356
    :goto_31
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getRealPathFromURI]Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getSettingGroup()J
    .registers 5

    .line 133
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 120
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 121
    invoke-interface {p6}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->getSourceIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->parseIntent(Landroid/content/Intent;)V

    .line 122
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p3

    new-instance p4, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode-IA;)V

    iget p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-interface {p2, p3, p4, p5, p7}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;II)V

    .line 123
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p3

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setNavigationBarHeight(I)V

    .line 124
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result p3

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setBottomBarHeight(I)V

    .line 125
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterButtonHeight()I

    move-result p4

    invoke-interface {p2, p3, p4}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setPanelPaddingValue(II)V

    .line 126
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->intent_photo_zoom_tick_view_margin_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mZoomTickViewMarginOffset:I

    return-void
.end method

.method protected isShot2ShotEnable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 6

    .line 267
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    const/4 p2, 0x0

    if-eqz p1, :cond_53

    .line 269
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mJpegData:[B

    .line 270
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->getReviewViewSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 271
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 272
    iget p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreOrientation:I

    neg-int p3, p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 273
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIsQuickCapture:Z

    if-eqz p3, :cond_31

    .line 274
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->hideActionView()V

    .line 275
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->doAttach()V

    goto :goto_4b

    .line 278
    :cond_31
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 279
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showActionView()V

    .line 280
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    .line 281
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 282
    const-string p1, "off"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->changeFlashState(Ljava/lang/String;Z)V

    .line 284
    :goto_4b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x95

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_5a

    .line 286
    :cond_53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xe

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :goto_5a
    return p2
.end method

.method public onBackPressed()Z
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "Battery"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 244
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "Temperature"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1a

    if-ne v2, v1, :cond_20

    .line 246
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->changeFlashState(Ljava/lang/String;Z)V

    :cond_20
    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 251
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->hideReviewView()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x85

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "capture_state"

    const-string v2, "capture_end"

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 257
    :cond_43
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .registers 1

    .line 113
    new-instance p0, Lcom/transsion/camera/feature/mode/photo/PhotoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/PhotoHelper;-><init>()V

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 212
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 218
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setBottomBarHeight(I)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterButtonHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setPanelPaddingValue(II)V

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onSettingReady()V
    .registers 6

    .line 160
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettingReady() flashValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " showing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_35

    .line 168
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 169
    const-string v0, "off"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->changeFlashState(Ljava/lang/String;Z)V

    :cond_35
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 229
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(II)Z

    move-result p0

    return p0
.end method

.method public onShutterLongClick(II)Z
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 237
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterLongClick(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public unInit()V
    .registers 3

    .line 153
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->unInit()V

    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->getDataFlowType()I

    move-result v0

    .line 198
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->jpegCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need jpeg image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 202
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    return-object v1

    .line 206
    :cond_1e
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updatePicSurface(Landroid/util/Size;IZZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method
