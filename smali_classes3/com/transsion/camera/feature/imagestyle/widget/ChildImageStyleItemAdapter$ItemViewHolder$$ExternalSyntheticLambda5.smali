.class public final synthetic Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$0:I

    iput p2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$0:I

    iget p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder;->$r8$lambda$mom7HYfXxSsYVY5DkF6aKPnNw-g(IILandroid/view/ViewGroup;)V

    return-void
.end method
