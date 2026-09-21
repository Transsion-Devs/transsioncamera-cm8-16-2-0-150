.class public final Lcom/ss/android/ugc/cut_ui/CutSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/CutSource$Companion;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final ARG_CUT_SOURCE:Ljava/lang/String; = "arg_cut_source"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ugc/cut_ui/CutSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/ss/android/ugc/cut_ui/CutSource$Companion;


# instance fields
.field private final type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_ui/CutSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSource;->Companion:Lcom/ss/android/ugc/cut_ui/CutSource$Companion;

    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSource$Creator;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/CutSource$Creator;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;ILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/CutSource;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/CutSource;->copy(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)Lcom/ss/android/ugc/cut_ui/CutSource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/ss/android/ugc/cut_ui/CutSourceType;
    .registers 1

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)Lcom/ss/android/ugc/cut_ui/CutSource;
    .registers 3

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-direct {p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/CutSource;-><init>(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)V

    return-object p0
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
    instance-of v1, p1, Lcom/ss/android/ugc/cut_ui/CutSource;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ss/android/ugc/cut_ui/CutSource;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    iget-object p1, p1, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    if-eq p0, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getType()Lcom/ss/android/ugc/cut_ui/CutSourceType;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final key()Ljava/lang/String;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CutSource(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSource;->type:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/CutSourceType;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
