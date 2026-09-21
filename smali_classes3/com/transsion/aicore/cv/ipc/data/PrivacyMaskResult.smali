.class public final Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult$CREATOR;


# instance fields
.field private final errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

.field private final privacyMasks:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->CREATOR:Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-class v0, Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/aicore/cv/ipc/ErrorCode;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/transsion/aicore/cv/ipc/ErrorCode;

    const/4 v1, -0x1

    const-string/jumbo v2, "unknown error"

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/ErrorCode;-><init>(ILjava/lang/String;)V

    .line 18
    :cond_1c
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_25

    goto :goto_29

    :cond_25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 16
    :goto_29
    invoke-direct {p0, v0, p1}, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;-><init>(Lcom/transsion/aicore/cv/ipc/ErrorCode;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/aicore/cv/ipc/ErrorCode;Ljava/util/List;)V
    .registers 4

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyMasks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    .line 14
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->privacyMasks:Ljava/util/List;

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->privacyMasks:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->privacyMasks:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {v0}, Lcom/transsion/aicore/cv/ipc/ErrorCode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->privacyMasks:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->privacyMasks:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivacyMaskResult(errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", privacyMasks="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;->privacyMasks:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
