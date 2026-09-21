.class public Lcom/transsion/hubsdk/api/internal/display/TranBrightnessSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAospService:Lcom/transsion/hubsdk/aosp/internal/display/TranAospBrightnessSynchronizer;

.field private static sThubService:Lcom/transsion/hubsdk/core/internal/display/TranThubBrightnessSynchronizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static brightnessFloatToInt(F)I
    .registers 2

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/internal/display/TranBrightnessSynchronizer;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/display/ITranBrightnessSynchronizerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/internal/display/ITranBrightnessSynchronizerAdapter;->brightnessFloatToInt(F)I

    move-result p0

    return p0
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/display/ITranBrightnessSynchronizerAdapter;
    .registers 1

    .line 22
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 23
    sget-object p0, Lcom/transsion/hubsdk/api/internal/display/TranBrightnessSynchronizer;->sThubService:Lcom/transsion/hubsdk/core/internal/display/TranThubBrightnessSynchronizer;

    if-nez p0, :cond_11

    new-instance p0, Lcom/transsion/hubsdk/core/internal/display/TranThubBrightnessSynchronizer;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/internal/display/TranThubBrightnessSynchronizer;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/internal/display/TranBrightnessSynchronizer;->sThubService:Lcom/transsion/hubsdk/core/internal/display/TranThubBrightnessSynchronizer;

    :cond_11
    return-object p0

    .line 25
    :cond_12
    sget-object p0, Lcom/transsion/hubsdk/api/internal/display/TranBrightnessSynchronizer;->sAospService:Lcom/transsion/hubsdk/aosp/internal/display/TranAospBrightnessSynchronizer;

    if-nez p0, :cond_1d

    new-instance p0, Lcom/transsion/hubsdk/aosp/internal/display/TranAospBrightnessSynchronizer;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/display/TranAospBrightnessSynchronizer;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/internal/display/TranBrightnessSynchronizer;->sAospService:Lcom/transsion/hubsdk/aosp/internal/display/TranAospBrightnessSynchronizer;

    :cond_1d
    return-object p0
.end method
