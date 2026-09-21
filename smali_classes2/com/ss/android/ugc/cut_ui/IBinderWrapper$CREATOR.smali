.class public final Lcom/ss/android/ugc/cut_ui/IBinderWrapper$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/IBinderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ss/android/ugc/cut_ui/IBinderWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/IBinderWrapper$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ugc/cut_ui/IBinderWrapper;
    .registers 2

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p0, Lcom/ss/android/ugc/cut_ui/IBinderWrapper;

    invoke-direct {p0, p1}, Lcom/ss/android/ugc/cut_ui/IBinderWrapper;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/IBinderWrapper$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/ss/android/ugc/cut_ui/IBinderWrapper;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/ss/android/ugc/cut_ui/IBinderWrapper;
    .registers 2

    .line 25
    new-array p0, p1, [Lcom/ss/android/ugc/cut_ui/IBinderWrapper;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/IBinderWrapper$CREATOR;->newArray(I)[Lcom/ss/android/ugc/cut_ui/IBinderWrapper;

    move-result-object p0

    return-object p0
.end method
