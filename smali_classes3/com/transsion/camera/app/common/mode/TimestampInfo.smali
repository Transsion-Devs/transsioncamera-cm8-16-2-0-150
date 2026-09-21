.class public Lcom/transsion/camera/app/common/mode/TimestampInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCaptureTime:J

.field private mExact:Z

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimestampInfo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mTimestamp:J

    .line 29
    iput-wide p3, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mCaptureTime:J

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mExact:Z

    return-void
.end method

.method public constructor <init>(JZJ)V
    .registers 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mTimestamp:J

    .line 35
    iput-wide p4, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mCaptureTime:J

    .line 36
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mExact:Z

    return-void
.end method


# virtual methods
.method public getCaptureTime()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mCaptureTime:J

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mTimestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimestampInfo@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mExact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mExact:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mCaptureTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateTimestamp(J)V
    .registers 6

    .line 40
    sget-object v0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTimestamp timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", TimestampInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mTimestamp:J

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/TimestampInfo;->mExact:Z

    return-void
.end method
