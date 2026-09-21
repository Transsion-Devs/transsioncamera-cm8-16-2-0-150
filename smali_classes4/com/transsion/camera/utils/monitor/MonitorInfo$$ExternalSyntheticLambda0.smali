.class public final synthetic Lcom/transsion/camera/utils/monitor/MonitorInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/MonitorInfo$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/monitor/MonitorInfo;->$r8$lambda$N1Vg1uAqrvRMO3856LgvfG6k1mE(Ljava/lang/String;Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;)Z

    move-result p0

    return p0
.end method
