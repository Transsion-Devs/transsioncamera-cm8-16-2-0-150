.class public final synthetic Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    check-cast p2, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->$r8$lambda$0DNjiDohCiYf3-iVO16cKyBYgaw(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)I

    move-result p0

    return p0
.end method
