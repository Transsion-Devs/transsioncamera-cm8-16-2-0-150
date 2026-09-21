.class public Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;
.super Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;
.source "SourceFile"


# static fields
.field private static final BGSERVICE_DISORDER_IMAGE:Z

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mBGEnable:Z

.field private final mBgEventQueue:Ljava/util/List;

.field private final mDisorderImageMap:Ljava/util/Map;

.field private final mImageQueue:Ljava/util/List;

.field private volatile mIsBGSurface:Z


# direct methods
.method public static synthetic $r8$lambda$3eGduIYUhuJ9b5xXYkqoIQXlIuo(Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;Landroid/media/Image;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->lambda$holdDisorderImage$1(Landroid/media/Image;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z3o96kR8ld-x8SnddNCe38jHuxk(Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->lambda$acquireImage$0(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BgServiceHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceDisorderImage:Z

    sput-boolean v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->BGSERVICE_DISORDER_IMAGE:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mImageQueue:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mDisorderImageMap:Ljava/util/Map;

    return-void
.end method

.method private checkNotifyDisorderBgErr(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V
    .registers 7

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImageCallback()Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    move-result-object v0

    .line 244
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    if-eqz v1, :cond_3c

    if-eqz v0, :cond_3c

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNotifyDisorderBgErr() called with: event = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    iget-wide v1, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_33

    const-wide/16 v1, -0x1

    .line 247
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTakenFail(J)V

    goto :goto_36

    .line 249
    :cond_33
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTakenFail(J)V

    .line 251
    :goto_36
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreasePicCount()V

    .line 252
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreaseCaptureCount()V

    :cond_3c
    return-void
.end method

.method private getSuccessBgEvent()Lcom/transsion/camera/app/common/bgservice/BgEvent;
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 171
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    .line 172
    iget v2, v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    return-object v0

    :cond_22
    return-object v1
.end method

.method private holdDisorderImage(Landroid/media/ImageReader;)V
    .registers 3

    .line 134
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda0;-><init>(Landroid/media/ImageReader;)V

    new-instance p1, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;)V

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImage(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/media/Image;

    return-void
.end method

.method private synthetic lambda$acquireImage$0(J)V
    .registers 5

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireImage image Timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 114
    invoke-static {}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->getInstance()Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->onCaptureEndByTimestamp(J)V

    :cond_23
    return-void
.end method

.method private synthetic lambda$holdDisorderImage$1(Landroid/media/Image;)V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdDisorderImage mDisorderImageMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mDisorderImageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mDisorderImageMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdDisorderImage: timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private tryToProcessNextDisorderImage()V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryToProcessNextDisorderImage: start mBgEventQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_90

    .line 148
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    .line 152
    iget-object v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mDisorderImageMap:Ljava/util/Map;

    iget-wide v3, v1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_28

    .line 155
    :cond_43
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryToProcessNextDisorderImage: process bgEvent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mDisorderImageMap:Ljava/util/Map;

    iget-wide v3, v1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6d

    :cond_6c
    const/4 v1, 0x0

    .line 160
    :goto_6d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryToProcessNextDisorderImage: end nextProcessImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mBgEventQueue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_91

    :goto_90
    return-void

    .line 164
    :cond_91
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Landroid/media/Image;)V

    return-void
.end method


# virtual methods
.method protected acquireImage(Landroid/media/ImageReader;Ljava/util/function/LongConsumer;)V
    .registers 3

    .line 111
    new-instance p2, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Landroid/media/ImageReader;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method protected addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 2

    .line 279
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    if-eqz p0, :cond_b

    .line 280
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    :cond_b
    return-void
.end method

.method protected checkNotifyBgErr()V
    .registers 5

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImageCallback()Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    move-result-object v0

    .line 231
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mImageQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    .line 232
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    const/4 v2, 0x0

    .line 233
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    iget v1, v1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3f

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "notify Bg err! "

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-wide/16 v1, -0x1

    .line 236
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTakenFail(J)V

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreasePicCount()V

    .line 238
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreaseCaptureCount()V

    :cond_3f
    return-void
.end method

.method protected disableBGEnable()V
    .registers 4

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableBGEnable: mBGEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .registers 1

    .line 286
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method protected isEnable()Z
    .registers 4

    .line 49
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBGEnable: mIsBGSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    return p0
.end method

.method protected isNeedReleaseAfterCheckNum()Z
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedReleaseAfterCheckNum: mIsBGSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBGEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    if-eqz v0, :cond_2c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method protected isPictureCountRemaining()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->isPictureCountRemaining()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method protected isUnnecessaryChangeCaptureCount()Z
    .registers 1

    .line 258
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isUnnecessaryChangePictureCount()Z
    .registers 1

    .line 263
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyEventCallback(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V
    .registers 8

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] notifyEventCallback event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBGEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ImageQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mImageQueue:Ljava/util/List;

    .line 189
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    if-nez v0, :cond_33

    return-void

    .line 193
    :cond_33
    const-string v0, "[CapturePerformance] notifyBgEventCallback"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 195
    invoke-static {}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->getInstance()Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    move-result-object v0

    iget v1, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mFrameNumber:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->onCaptureEndByFrameNumber(J)V

    .line 197
    :cond_48
    sget-boolean v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->BGSERVICE_DISORDER_IMAGE:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_95

    .line 198
    iget v0, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    if-ne v0, v1, :cond_89

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_54
    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mDisorderImageMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    if-eqz v1, :cond_82

    .line 202
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyBgEventCallback: remove fail image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_82

    :catchall_80
    move-exception p0

    goto :goto_87

    .line 205
    :cond_82
    :goto_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_54 .. :try_end_83} :catchall_80

    .line 206
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->checkNotifyDisorderBgErr(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V

    goto :goto_8e

    .line 205
    :goto_87
    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_80

    throw p0

    .line 208
    :cond_89
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_8e
    invoke-direct {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->tryToProcessNextDisorderImage()V

    .line 211
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 215
    :cond_95
    iget v0, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    if-ne v0, v1, :cond_a2

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->checkNotifyBgErr()V

    goto :goto_bf

    :cond_a2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_bf

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mImageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mImageQueue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ImageReader;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Landroid/media/ImageReader;)V

    goto :goto_bf

    .line 222
    :cond_ba
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_bf
    :goto_bf
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method protected notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4

    .line 181
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 182
    const-class v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 183
    check-cast p2, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->notifyEventCallback(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V

    :cond_10
    return-void
.end method

.method protected onBGServiceDied()V
    .registers 1

    .line 67
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->onBGServiceDiedBefore()V

    .line 68
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onBGServiceDied()V

    return-void
.end method

.method protected onBGServiceDiedBefore()V
    .registers 2

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    .line 73
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onImageAvailable mBGEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", BgEventQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    sget-boolean v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->BGSERVICE_DISORDER_IMAGE:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    if-eqz v0, :cond_35

    .line 102
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->holdDisorderImage(Landroid/media/ImageReader;)V

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->tryToProcessNextDisorderImage()V

    return-void

    .line 105
    :cond_35
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->onProcessSerialImage(Landroid/media/ImageReader;)V

    return-void
.end method

.method protected onImageReaderClose()V
    .registers 3

    .line 78
    sget-boolean v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->BGSERVICE_DISORDER_IMAGE:Z

    if-eqz v0, :cond_17

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mDisorderImageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mDisorderImageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_17
    return-void
.end method

.method protected onProcessSerialImage(Landroid/media/ImageReader;)V
    .registers 4

    .line 120
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    if-eqz v0, :cond_15

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->getSuccessBgEvent()Lcom/transsion/camera/app/common/bgservice/BgEvent;

    move-result-object v0

    if-nez v0, :cond_10

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mImageQueue:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 126
    :cond_10
    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_15
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Landroid/media/ImageReader;)V

    return-void
.end method

.method protected onRelease(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 3

    .line 86
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    if-eqz v0, :cond_b

    .line 87
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 89
    :cond_b
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onRelease(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    return-void
.end method

.method protected resetBGEnable(ZZ)V
    .registers 4

    .line 55
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetBGEnable: mBGEnable = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected setCustomEnable(ZZ)V
    .registers 3

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    .line 43
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    .line 44
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setEnable(Z)V

    return-void
.end method

.method protected shouldReleaseSurface()Z
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldReleaseSurface: mIsBGSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBGEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mIsBGSurface:Z

    if-eqz v0, :cond_2d

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->mBGEnable:Z

    if-nez p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method
