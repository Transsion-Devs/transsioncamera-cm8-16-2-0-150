.class public Lcom/transsion/camera/utils/monitor/MonitorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;,
        Lcom/transsion/camera/utils/monitor/MonitorInfo$TimeoutEntry;,
        Lcom/transsion/camera/utils/monitor/MonitorInfo$ExpEntry;
    }
.end annotation


# static fields
.field public static final DEFAULT_SCENE_THRESHOLD:Ljava/util/Map;

.field public static final NEED_ADAPTIVE_THRESHOLD_SCENE:Ljava/util/List;


# instance fields
.field public mMonitorTypeEntryList:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$N1Vg1uAqrvRMO3856LgvfG6k1mE(Ljava/lang/String;Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 45
    invoke-virtual {p1}, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/monitor/MonitorInfo;->DEFAULT_SCENE_THRESHOLD:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/monitor/MonitorInfo;->NEED_ADAPTIVE_THRESHOLD_SCENE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo;->mMonitorTypeEntryList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo;->mMonitorTypeEntryList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public getMonitorEntry(Ljava/lang/String;)Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;
    .registers 3

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo;->mMonitorTypeEntryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/monitor/MonitorInfo$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;

    return-object p0
.end method

.method public getMonitorList()Ljava/util/List;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo;->mMonitorTypeEntryList:Ljava/util/List;

    return-object p0
.end method
