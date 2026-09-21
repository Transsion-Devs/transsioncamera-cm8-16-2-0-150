.class public Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;
.super Lcom/transsion/camera/app/common/mode/FilterHookMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;,
        Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/FilterHookMode;"
    }
.end annotation


# static fields
.field private static final CROP_INTENT:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final INLINED_DATA_INTENT:Ljava/lang/String; = "inline-data"

.field private static final INTENT_EXTRA_CIRCLE:Ljava/lang/String; = "circle"

.field private static final INTENT_EXTRA_CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field private static final INTENT_EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final INTENT_EXTRA_RETURN_DATA:Ljava/lang/String; = "return-data"

.field private static final MAX_NUMBER_PIXELS:I = 0xc800

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final TEMP_CROP_FILE_NAME:Ljava/lang/String; = "crop-temp"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final WIDE_CAMERA_PREVIEW_LIMIT:I = 0x138000


# instance fields
.field private mBackFakeCameraSupport:Z

.field private mCropValue:Ljava/lang/String;

.field private mFrontFakeCameraSupport:Z

.field private mHighDefinitionMode:Z

.field private mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

.field private mIsQuickCapture:Z

.field private mJpegData:[B

.field private mSaveUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIntentReviewUI(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJpegData(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mSaveUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoAttach(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->doAttach()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 5

    .line 126
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/FilterHookMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "IntentASDMode+"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 129
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->readFakeNightSceneLensSupport(Landroid/content/res/Resources;)V

    .line 130
    new-instance p1, Lcom/transsion/camera/app/ui/IntentReviewUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/IntentReviewUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "IntentASDMode-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    return-object p0
.end method

.method private attachToCropIntent()V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "attachToCropIntent"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->getTempUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[attachToCropIntent] return because temp uri is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 208
    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 209
    const-string v2, "circle"

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mCropValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 210
    const-string v2, "circleCrop"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_33
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_3d

    .line 213
    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_43

    .line 215
    :cond_3d
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    :goto_43
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/16 v0, 0x3e8

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->transferIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private attachToInLinedIntent()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "attachToInLinedIntent"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    invoke-static {v0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 192
    invoke-static {v1, v0, v2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "inline-data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 v1, -0x1

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private doAttach()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAttach,mCropValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mCropValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_31

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_2d

    .line 179
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 181
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->attachToInLinedIntent()V

    return-void

    .line 184
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->attachToCropIntent()V

    return-void
.end method

.method private getTempUri()Landroid/net/Uri;
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    .line 229
    :try_start_c
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_13} :catch_2f
    .catchall {:try_start_c .. :try_end_13} :catchall_2d

    .line 231
    :try_start_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 232
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 233
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

    .line 235
    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_27} :catch_2b
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    .line 240
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

    .line 238
    :goto_31
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_20

    goto :goto_27

    :goto_35
    return-object v2

    .line 240
    :goto_36
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 241
    throw p0
.end method

.method private isFakeDualLens()Z
    .registers 3

    .line 551
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mBackFakeCameraSupport:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_e
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mFrontFakeCameraSupport:Z

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "1"

    .line 553
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .registers 4

    const/4 v0, 0x3

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    const-string v0, "crop"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mCropValue:Ljava/lang/String;

    .line 168
    const-string v0, "android.intent.extra.quickCapture"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIsQuickCapture:Z

    .line 169
    const-string v0, "output"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mSaveUri:Landroid/net/Uri;

    return-void
.end method

.method private readFakeNightSceneLensSupport(Landroid/content/res/Resources;)V
    .registers 4

    .line 533
    sget v0, Lcom/transsion/camera/R$integer;->asd_night_scene_camera_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_15

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    return-void

    .line 542
    :cond_10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mFrontFakeCameraSupport:Z

    .line 543
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mBackFakeCameraSupport:Z

    return-void

    .line 539
    :cond_15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mBackFakeCameraSupport:Z

    return-void

    .line 536
    :cond_18
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mFrontFakeCameraSupport:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->buildCaptureInfo()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;
    .registers 5

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    .line 561
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;-><init>(IZZLjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;
    .registers 2

    .line 566
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 4

    .line 571
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 572
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mUri:Landroid/net/Uri;

    .line 573
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->getReviewViewSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 574
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 575
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreOrientation:I

    neg-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->showReviewView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .registers 6

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_definition"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "off"

    if-nez v1, :cond_3c

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    if-nez v1, :cond_3c

    .line 500
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when superDefinition is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->super_definition_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 504
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_hdr"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_72

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 506
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when HDR is not off: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 507
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->hdr_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 510
    :cond_72
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "Continuous shot is not support when Flash is not off: "

    if-nez v1, :cond_a7

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 512
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 513
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->flash_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 516
    :cond_a7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_da

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_da

    .line 518
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 519
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->flash_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 522
    :cond_da
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string v1, "-1"

    .line 524
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_119

    .line 525
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when filter is not off: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->filter_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 529
    :cond_119
    const-string p0, ""

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 2

    .line 344
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_2c

    .line 345
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 346
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->algorithmSupport()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 347
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2c

    :cond_2a
    move p0, v0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p0, 0x4

    .line 350
    :goto_2d
    invoke-static {v0, p0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$bool;->high_definition_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    .line 371
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v0, "key_filter"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v0, "key_distortion_correction"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v0, "key_human_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v0, "key_shutter_sound_optional"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    if-nez v0, :cond_33

    .line 378
    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_33
    const-string v0, "key_super_resolution"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v0, "key_smile_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v0, "key_portraitmode_enhance"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v0, "key_asd_enhance"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const-string v0, "key_lens_correction"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v0, "key_night_hawk"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->isFakeDualLens()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 387
    const-string v0, "key_fake_asd_camera"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_5c
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6f

    .line 392
    const-string p0, "key_ai_group_photo"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const-string p0, "key_horizon_switch_wide"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_6f
    const-string p0, "key_super_flash"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const-string p0, "key_taint_detection"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 399
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 1

    .line 405
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    .line 416
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    .line 417
    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    .line 419
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v3

    .line 421
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 422
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 425
    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_3e
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 426
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    sub-double/2addr v7, v0

    .line 427
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_3e

    .line 428
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    const v8, 0x138000

    if-gt v7, v8, :cond_3e

    .line 429
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v9

    mul-int/2addr v7, v9

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v9, v7, v5

    if-gtz v9, :cond_3e

    move-object v4, v3

    move-wide v5, v7

    goto :goto_3e

    :cond_87
    if-eqz v4, :cond_9c

    .line 440
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_9b

    .line 441
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_9b

    return-object p0

    :cond_9b
    return-object v4

    .line 445
    :cond_9c
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 365
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 136
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 137
    invoke-interface {p6}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->getSourceIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 138
    const-string p2, "android.media.action.FANS_IMAGE_CAPTURE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 139
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->parseIntent(Landroid/content/Intent;)V

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    if-eqz p1, :cond_5f

    .line 141
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode-IA;)V

    iget p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p5

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;II)V

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setNavigationBarHeight(I)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setBottomBarHeight(I)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterButtonHeight()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setPanelPaddingValue(II)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_5f
    return-void
.end method

.method protected initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;
    .registers 5

    .line 360
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    sget v1, Lcom/transsion/camera/R$integer;->max_continuous_shot_number:I

    sget v2, Lcom/transsion/camera/R$raw;->camera_continuous_shutter:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/content/Context;II)V

    return-object v0
.end method

.method protected isContinuousShotSupport()Z
    .registers 6

    .line 452
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContinuousShotSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 456
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_super_definition"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "off"

    if-nez v2, :cond_4f

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mHighDefinitionMode:Z

    if-nez v2, :cond_4f

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when superDefinition is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 462
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_hdr"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when HDR is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 467
    :cond_7a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_flash"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "Continuous shot is not support when Flash is not off: "

    if-nez v2, :cond_a5

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 472
    :cond_a5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_flash_facade"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ce

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ce

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 477
    :cond_ce
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_filter"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_103

    const-string v2, "0"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_103

    const-string v2, "-1"

    .line 479
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_103

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when filter is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 483
    :cond_103
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 484
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11c

    return v1

    .line 488
    :cond_11c
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_135

    return v1

    :cond_135
    const/4 p0, 0x1

    return p0
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 7

    .line 300
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZIJ)I

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    if-eqz v0, :cond_19

    .line 302
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    if-eqz p1, :cond_11

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mJpegData:[B

    goto :goto_1c

    .line 314
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xe

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_1c

    .line 317
    :cond_19
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZIJ)I

    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .registers 1

    .line 355
    new-instance p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeHelper;-><init>()V

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 152
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 158
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setBottomBarHeight(I)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterButtonHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->setPanelPaddingValue(II)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->mIntentReviewUI:Lcom/transsion/camera/app/ui/IIntentReviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .registers 7

    .line 324
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->dsp_lowlight_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_31

    .line 328
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 329
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 328
    const-string v3, "key_dsp_lowlight_mode"

    const-string v4, "off"

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    if-eqz p1, :cond_40

    if-eqz v0, :cond_40

    if-eqz v1, :cond_40

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_40
    return p1
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method
