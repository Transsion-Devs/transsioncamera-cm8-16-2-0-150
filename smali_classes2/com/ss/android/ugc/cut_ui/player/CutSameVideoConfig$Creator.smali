.class public final Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;
    .registers 4

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;-><init>(ILjava/lang/String;Z)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig$Creator;->newArray(I)[Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfig;

    move-result-object p0

    return-object p0
.end method
