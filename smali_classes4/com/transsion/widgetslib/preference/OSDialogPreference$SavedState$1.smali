.class Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;
    .registers 2

    .line 535
    new-instance p0, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 533
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;
    .registers 2

    .line 539
    new-array p0, p1, [Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 533
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState$1;->newArray(I)[Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    move-result-object p0

    return-object p0
.end method
