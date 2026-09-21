.class public Lcom/transsion/hubsdk/api/graphics/TranHardwareRendererManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranHardwareRendererManager"

.field private static sAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospHardwareRendererManager;

.field private static sThubService:Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;
    .registers 4

    if-eqz p0, :cond_d

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/graphics/TranHardwareRendererManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranHardwareRendererManagerAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/graphics/ITranHardwareRendererManagerAdapter;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 50
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RenderNode is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranHardwareRendererManagerAdapter;
    .registers 2

    .line 29
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 30
    sget-object p0, Lcom/transsion/hubsdk/api/graphics/TranHardwareRendererManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubHardwareRendererManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object p0, Lcom/transsion/hubsdk/api/graphics/TranHardwareRendererManager;->sThubService:Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;

    if-nez p0, :cond_18

    new-instance p0, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/graphics/TranHardwareRendererManager;->sThubService:Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;

    :cond_18
    return-object p0

    .line 33
    :cond_19
    sget-object p0, Lcom/transsion/hubsdk/api/graphics/TranHardwareRendererManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospHardwareRendererManager"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object p0, Lcom/transsion/hubsdk/api/graphics/TranHardwareRendererManager;->sAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospHardwareRendererManager;

    if-nez p0, :cond_2b

    new-instance p0, Lcom/transsion/hubsdk/aosp/graphics/TranAospHardwareRendererManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/graphics/TranAospHardwareRendererManager;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/graphics/TranHardwareRendererManager;->sAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospHardwareRendererManager;

    :cond_2b
    return-object p0
.end method
