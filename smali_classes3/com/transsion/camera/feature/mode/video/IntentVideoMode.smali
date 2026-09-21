.class public Lcom/transsion/camera/feature/mode/video/IntentVideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;
    }
.end annotation


# static fields
.field private static mFixedQualityFor3RD:Ljava/lang/String;


# instance fields
.field private final mFixedQualityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

.field private mIsUriFromIntent:Z

.field private mKeyFlashValue:Ljava/lang/String;

.field private mLimitDuration:I

.field private mLimitQuality:I

.field private mLimitSize:J

.field private mSaveUri:Landroid/net/Uri;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoSaving:Z

.field private mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIntentReviewUI(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUriFromIntent(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIsUriFromIntent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyFlashValue(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmKeyFlashValue(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mattachToSaveUri(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->attachToSaveUri()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeFlashState(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteCurrentVideo(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->deleteCurrentVideo()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIsUriFromIntent:Z

    const/4 p2, 0x0

    .line 67
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoSaving:Z

    .line 71
    new-instance p1, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$1;-><init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityMap:Ljava/util/HashMap;

    .line 81
    new-instance p1, Lcom/transsion/camera/app/ui/IntentReviewUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/IntentReviewUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private attachToSaveUri()V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[attachToSaveUri] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 414
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 415
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v1, -0x1

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private changeFlashState(Ljava/lang/String;)V
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 245
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 244
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 6

    .line 371
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 372
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_e

    goto :goto_f

    :cond_e
    move-wide v1, v3

    :goto_f
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 p0, 0x0

    .line 373
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 374
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    return-object v0
.end method

.method private deleteCurrentVideo()V
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteCurrentVideo] mSaveUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_2a

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 424
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    :cond_2a
    return-void
.end method

.method private getFlashKey()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 252
    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    return-object v0

    .line 255
    :cond_f
    const-string p0, "key_flash"

    return-object p0
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 6

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 357
    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    .line 358
    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 360
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setScreenFormType(II)V

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .registers 8

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseIntent sourceIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 380
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    const-string v1, "android.intent.extra.sizeLimit"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J

    .line 384
    const-string v1, "android.intent.extra.durationLimit"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitDuration:I

    .line 386
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 388
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 389
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v1, :cond_4f

    .line 390
    invoke-static {v4, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 391
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitQuality:I

    .line 394
    :cond_4f
    const-string v1, "output"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 395
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseIntent saveUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_97

    .line 398
    :try_start_6f
    const-string v1, "rw"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 399
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    .line 400
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.truecaller"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 401
    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_8d} :catch_93
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_8d} :catch_8e

    return-void

    :catch_8e
    move-exception p0

    .line 406
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_97

    :catch_93
    move-exception p0

    .line 404
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_97
    :goto_97
    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 216
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 9

    .line 489
    new-instance v0, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    .line 490
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    .line 491
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    if-nez v2, :cond_17

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    if-eqz v2, :cond_19

    .line 492
    :cond_17
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    .line 494
    :cond_19
    new-instance v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    sget v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    const/4 v4, 0x1

    .line 495
    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    const/4 v5, 0x2

    .line 496
    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 494
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    new-instance v6, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 497
    invoke-virtual {v6, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v6

    sget v7, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    .line 498
    invoke-virtual {v6, v7, v1, v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    .line 499
    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    .line 497
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    .line 500
    invoke-virtual {v2, v3, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x80

    const/4 v4, 0x4

    const/16 v6, 0x8

    filled-new-array {v5, v4, v6, v2, v3}, [I

    move-result-object v2

    .line 501
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    .line 505
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    .line 504
    invoke-virtual {v1, v5, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setMarginOffset(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    .line 507
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result p0

    .line 506
    invoke-virtual {v1, v4, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setMarginOffset(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0
.end method

.method protected getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 3

    .line 513
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
    .registers 3

    .line 150
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    const-string p1, "key_fingerprint_capture"

    const-string v0, "key_eye_detection"

    if-eqz p0, :cond_15

    .line 151
    const-string p0, "key_activity_orientation"

    filled-new-array {v0, p1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_15
    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 165
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_8
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 169
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 145
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 88
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 89
    invoke-interface {p6}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->getSourceIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->parseIntent(Landroid/content/Intent;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Lcom/transsion/camera/feature/mode/video/IntentVideoMode-IA;)V

    iget p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-interface {p1, p2, p3, p4, p7}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;II)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setNavigationBarHeight(I)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setBottomBarHeight(I)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterButtonHeight()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setPanelPaddingValue(II)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    return-void
.end method

.method protected isDurationInValid(J)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupportVSS()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    packed-switch p1, :pswitch_data_3c

    goto :goto_3b

    .line 442
    :pswitch_4
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz p1, :cond_1a

    .line 443
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 445
    :cond_1a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mIntentVideoModeSupportFlashOperationWhenRecording:Z

    if-eqz p1, :cond_3b

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_3b

    const/16 p1, 0x148

    .line 446
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 437
    :pswitch_2c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-eqz p0, :cond_3b

    .line 438
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->restoreRecordingUI()V

    return-void

    .line 432
    :pswitch_34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-eqz p0, :cond_3b

    .line 433
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->tempHideRecordingUI()V

    :cond_3b
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0xc7
        :pswitch_34
        :pswitch_2c
        :pswitch_4
    .end packed-switch
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 310
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoSaving:Z

    .line 313
    :cond_7
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-nez v0, :cond_25

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mVideoUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_25
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_30

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 322
    :cond_30
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "Battery"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "Temperature"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1f

    .line 295
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    :cond_1f
    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 300
    :cond_22
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateQuality mLimitQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFixedQualityFor3RD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitQuality:I

    if-lez v0, :cond_2b

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 349
    :cond_2b
    sget-object v0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 350
    sget-object p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    return-object p0

    .line 352
    :cond_36
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onMediaRecorderPreparing()V
    .registers 2

    .line 159
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderPreparing()V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setRecordingOrientation(I)V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 3

    .line 366
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopping(IZ)V

    const/16 p1, 0xc9

    .line 367
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public bridge synthetic onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 111
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-eqz p0, :cond_f

    .line 114
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onOrientationChanged(I)V

    :cond_f
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 120
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setBottomBarHeight(I)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterButtonHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setPanelPaddingValue(II)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onSettingReady()V
    .registers 6

    .line 260
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 262
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v1

    .line 265
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

    if-eqz v1, :cond_34

    .line 268
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 269
    const-string v0, "off"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoSaving:Z

    if-eqz v0, :cond_d

    goto :goto_12

    .line 278
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterLongClick(II)Z
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 286
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterLongClick(II)Z

    move-result p0

    return p0
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    .registers 6

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onVideoFileSaved+] fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoSaving:Z

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->getReviewViewSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 226
    :try_start_2b
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_30

    goto :goto_35

    :catch_30
    move-exception p2

    .line 228
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    .line 230
    :goto_35
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 231
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    neg-int v0, v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    .line 233
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 234
    const-string v0, "ringscreenlight"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_59

    .line 235
    const-string p2, "off"

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    .line 237
    :cond_59
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    if-nez p2, :cond_5f

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    .line 240
    :cond_5f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onVideoFileSaved-]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoSaving:Z

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->getReviewViewSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 195
    :try_start_d
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_17

    :catch_12
    move-exception p2

    .line 197
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    .line 199
    :goto_17
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 200
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    neg-int v0, v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mKeyFlashValue:Ljava/lang/String;

    .line 203
    const-string v0, "ringscreenlight"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3b

    .line 204
    const-string p2, "off"

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->changeFlashState(Ljava/lang/String;)V

    .line 206
    :cond_3b
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    if-nez p2, :cond_41

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    :cond_41
    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 6

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onVideoMediaRecorderInfoConstruct], mLimitDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mLimitSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_35

    .line 177
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setTargetUri(Landroid/net/Uri;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIsUriFromIntent:Z

    .line 181
    :cond_35
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitDuration:I

    if-lez v0, :cond_3e

    mul-int/lit16 v0, v0, 0x3e8

    .line 182
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setMaxDuration(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 184
    :cond_3e
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mLimitSize:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_49

    .line 185
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    :cond_49
    return-void
.end method

.method protected processFileSaved(Landroid/net/Uri;Ljava/lang/Object;I)V
    .registers 4

    .line 327
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->processFileSaved(Landroid/net/Uri;Ljava/lang/Object;I)V

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoSaving:Z

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCallingPackage] callingPackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    return-void

    :cond_29
    const/4 p0, 0x0

    .line 105
    sput-object p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mFixedQualityFor3RD:Ljava/lang/String;

    return-void
.end method

.method protected showInfo(I)V
    .registers 2

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 136
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-eqz v0, :cond_a

    .line 138
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->unInitVideoUI()V

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .registers 2

    .line 128
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;

    if-eqz p0, :cond_a

    .line 130
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    :cond_a
    return-void
.end method
