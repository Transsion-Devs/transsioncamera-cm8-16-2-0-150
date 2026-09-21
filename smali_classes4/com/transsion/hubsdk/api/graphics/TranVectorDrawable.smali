.class public Lcom/transsion/hubsdk/api/graphics/TranVectorDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranVectorDrawable"

.field private static sAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospVectorDrawable;

.field private static sThubService:Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranVectorDrawableAdapter;
    .registers 2

    .line 24
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 25
    sget-object p0, Lcom/transsion/hubsdk/api/graphics/TranVectorDrawable;->sThubService:Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;

    if-nez p0, :cond_11

    new-instance p0, Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/graphics/TranVectorDrawable;->sThubService:Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;

    :cond_11
    return-object p0

    .line 27
    :cond_12
    sget-object p0, Lcom/transsion/hubsdk/api/graphics/TranVectorDrawable;->TAG:Ljava/lang/String;

    const-string v0, "TranAospVectorDrawable"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object p0, Lcom/transsion/hubsdk/api/graphics/TranVectorDrawable;->sAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospVectorDrawable;

    if-nez p0, :cond_24

    new-instance p0, Lcom/transsion/hubsdk/aosp/graphics/TranAospVectorDrawable;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/graphics/TranAospVectorDrawable;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/graphics/TranVectorDrawable;->sAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospVectorDrawable;

    :cond_24
    return-object p0
.end method


# virtual methods
.method public updateIconColor(Landroid/graphics/drawable/VectorDrawable;IIILjava/lang/String;)Z
    .registers 12

    .line 41
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p1, :cond_1a

    .line 47
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/graphics/TranVectorDrawable;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranVectorDrawableAdapter;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/graphics/ITranVectorDrawableAdapter;->updateIconColor(Landroid/graphics/drawable/VectorDrawable;IIILjava/lang/String;)Z

    move-result p0

    return p0

    .line 45
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "VectorDrawable is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
