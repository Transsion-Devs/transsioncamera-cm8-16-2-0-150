.class public final Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final endTime:J

.field private final timeRange:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    .line 41
    iput-wide p3, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;JJILjava/lang/Object;)Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-wide p1, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    :cond_6
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_c

    iget-wide p3, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->copy(JJ)Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    return-wide v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    return-wide v0
.end method

.method public final copy(JJ)Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;
    .registers 5

    new-instance p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;-><init>(JJ)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;

    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    iget-wide v5, p1, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    iget-wide p0, p1, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getEndTime()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    return-wide v0
.end method

.method public final getTimeRange()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CKMomentTimeRequirement(endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentTimeRequirement;->timeRange:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
