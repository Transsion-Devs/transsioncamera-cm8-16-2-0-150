.class public final Lcom/transsion/aicore/cv/ipc/erase/MattingResult$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/cv/ipc/erase/MattingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/aicore/cv/ipc/erase/MattingResult$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/erase/MattingResult;
    .registers 2

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p0, Lcom/transsion/aicore/cv/ipc/erase/MattingResult;

    invoke-direct {p0, p1}, Lcom/transsion/aicore/cv/ipc/erase/MattingResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/erase/MattingResult$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/erase/MattingResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/aicore/cv/ipc/erase/MattingResult;
    .registers 2

    .line 30
    new-array p0, p1, [Lcom/transsion/aicore/cv/ipc/erase/MattingResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/erase/MattingResult$CREATOR;->newArray(I)[Lcom/transsion/aicore/cv/ipc/erase/MattingResult;

    move-result-object p0

    return-object p0
.end method
