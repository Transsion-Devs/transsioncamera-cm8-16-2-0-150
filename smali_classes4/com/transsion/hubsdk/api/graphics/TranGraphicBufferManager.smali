.class public Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranGraphicBufferManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospGraphicBuffer;

.field private mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubGraphicBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromHardwareBuffer(Landroid/view/Display;II)Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;
    .registers 5

    if-eqz p1, :cond_d

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranGraphicBufferAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/graphics/ITranGraphicBufferAdapter;->createFromHardwareBuffer(Landroid/view/Display;II)Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;

    move-result-object p0

    return-object p0

    .line 48
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "display cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createFromHardwareBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;
    .registers 4

    if-eqz p2, :cond_d

    .line 66
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranGraphicBufferAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/graphics/ITranGraphicBufferAdapter;->createFromHardwareBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;

    move-result-object p0

    return-object p0

    .line 64
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Rect cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranGraphicBufferAdapter;
    .registers 3

    .line 28
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 29
    sget-object p1, Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubGraphicBuffer"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubGraphicBuffer;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/graphics/TranThubGraphicBuffer;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/graphics/TranThubGraphicBuffer;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubGraphicBuffer;

    :cond_18
    return-object p1

    .line 32
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospGraphicBuffer"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospGraphicBuffer;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/graphics/TranAospGraphicBuffer;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/graphics/TranAospGraphicBuffer;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBufferManager;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospGraphicBuffer;

    :cond_2b
    return-object p1
.end method
