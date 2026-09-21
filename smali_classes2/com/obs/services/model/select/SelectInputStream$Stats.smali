.class Lcom/obs/services/model/select/SelectInputStream$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/select/SelectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stats"
.end annotation


# instance fields
.field bytesProcessed:J

.field bytesReturned:J

.field bytesScanned:J

.field final synthetic this$0:Lcom/obs/services/model/select/SelectInputStream;


# direct methods
.method private constructor <init>(Lcom/obs/services/model/select/SelectInputStream;)V
    .registers 4

    .line 474
    iput-object p1, p0, Lcom/obs/services/model/select/SelectInputStream$Stats;->this$0:Lcom/obs/services/model/select/SelectInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 475
    iput-wide v0, p0, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesScanned:J

    .line 476
    iput-wide v0, p0, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesProcessed:J

    .line 477
    iput-wide v0, p0, Lcom/obs/services/model/select/SelectInputStream$Stats;->bytesReturned:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/model/select/SelectInputStream;Lcom/obs/services/model/select/SelectInputStream$1;)V
    .registers 3

    .line 474
    invoke-direct {p0, p1}, Lcom/obs/services/model/select/SelectInputStream$Stats;-><init>(Lcom/obs/services/model/select/SelectInputStream;)V

    return-void
.end method
