.class public final synthetic Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->$r8$lambda$RL5IN88tvt4rfNuqVI_YD-qVCjc(ILcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$Item;)Z

    move-result p0

    return p0
.end method
