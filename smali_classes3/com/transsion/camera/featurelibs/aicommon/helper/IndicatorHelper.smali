.class public Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "IndicatorHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showFlag(Ljava/lang/String;)Z
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_ai_indicator_guide_show_flag"

    .line 64
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private showTimes(Ljava/lang/String;)I
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_ai_indicator_guide_show_times"

    .line 44
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 43
    const-string v1, "0"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    :try_start_14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_18} :catch_19

    return p0

    :catch_19
    move-exception p1

    .line 48
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTimes parseInt exception, showTimesStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private updateFlag(Ljava/lang/String;)V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_ai_indicator_guide_show_flag"

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public increase(Ljava/lang/String;)V
    .registers 6

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->showTimes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 37
    sget-object v1, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increase feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", showTimes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_ai_indicator_guide_show_times"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public showGuide(Ljava/lang/String;)Z
    .registers 4

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->showFlag(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->updateFlag(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/helper/IndicatorHelper;->showTimes(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x3

    if-ge p0, p1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method
