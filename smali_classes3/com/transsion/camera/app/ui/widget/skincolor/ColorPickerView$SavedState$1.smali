.class Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;
    .registers 3

    .line 497
    new-instance p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;-><init>(Landroid/os/Parcel;Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 494
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;
    .registers 2

    .line 502
    new-array p0, p1, [Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 494
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState$1;->newArray(I)[Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$SavedState;

    move-result-object p0

    return-object p0
.end method
