.class public Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/util/DeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# instance fields
.field private availableSize:J

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;J)J
    .registers 3

    .line 248
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;->totalSize:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;J)J
    .registers 3

    .line 248
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;->availableSize:J

    return-wide p1
.end method


# virtual methods
.method public getTotalSize()J
    .registers 3

    .line 253
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/util/DeviceUtil$MemoryInfo;->totalSize:J

    return-wide v0
.end method
