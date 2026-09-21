.class public final synthetic Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->$r8$lambda$RTJTjFzCq463Mq2Z8e6JQmxahK8(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
