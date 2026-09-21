.class public abstract Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .registers 3

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter;->writeSample()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter;->call()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public abstract writeSample()J
.end method
