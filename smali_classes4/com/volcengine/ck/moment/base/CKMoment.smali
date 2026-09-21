.class public final Lcom/volcengine/ck/moment/base/CKMoment;
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
            "Lcom/volcengine/ck/moment/base/CKMoment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

.field private cover:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final isPOI:Z

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMoment$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/moment/base/CKMoment$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/moment/base/CKMoment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentConfig;ZLjava/lang/String;)V
    .registers 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cover"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    .line 16
    iput-boolean p4, p0, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    .line 17
    iput-object p5, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentConfig;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_5

    const/4 p4, 0x0

    :cond_5
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_c

    .line 17
    const-string p5, ""

    :cond_c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/volcengine/ck/moment/base/CKMoment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentConfig;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/moment/base/CKMoment;Ljava/lang/String;Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentConfig;ZLjava/lang/String;ILjava/lang/Object;)Lcom/volcengine/ck/moment/base/CKMoment;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget-object p3, p0, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget-boolean p4, p0, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-object p5, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    :cond_1e
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/volcengine/ck/moment/base/CKMoment;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentConfig;ZLjava/lang/String;)Lcom/volcengine/ck/moment/base/CKMoment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Lcom/volcengine/ck/moment/base/CKMomentConfig;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    return-object p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentConfig;ZLjava/lang/String;)Lcom/volcengine/ck/moment/base/CKMoment;
    .registers 12

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "title"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cover"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMoment;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/volcengine/ck/moment/base/CKMoment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/volcengine/ck/moment/base/CKMomentConfig;ZLjava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/moment/base/CKMoment;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/moment/base/CKMoment;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    iget-object v3, p1, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    iget-boolean v3, p1, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    iget-object p1, p1, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    return v2

    :cond_3f
    return v0
.end method

.method public final getConfig()Lcom/volcengine/ck/moment/base/CKMomentConfig;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    return-object p0
.end method

.method public final getCover()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    invoke-virtual {v1}, Lcom/volcengine/ck/moment/base/CKMomentConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isPOI()Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    return p0
.end method

.method public final setCover(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CKMoment(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPOI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->config:Lcom/volcengine/ck/moment/base/CKMomentConfig;

    invoke-virtual {v0, p1, p2}, Lcom/volcengine/ck/moment/base/CKMomentConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/volcengine/ck/moment/base/CKMoment;->isPOI:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/volcengine/ck/moment/base/CKMoment;->cover:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
