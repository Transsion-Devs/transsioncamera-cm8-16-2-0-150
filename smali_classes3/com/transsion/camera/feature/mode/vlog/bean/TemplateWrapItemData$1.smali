.class Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;
    .registers 2

    .line 228
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 225
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;
    .registers 2

    .line 233
    new-array p0, p1, [Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 225
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData$1;->newArray(I)[Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object p0

    return-object p0
.end method
