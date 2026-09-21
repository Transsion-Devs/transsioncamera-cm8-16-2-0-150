.class public Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder;
.super Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$2lgGaByvTkw0s783qeZSQcREmSg(ILandroid/graphics/Rect;Landroid/widget/TextView;)Z
    .registers 3

    .line 278
    if-lez p0, :cond_6

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$BSJowGyvkyIkLQEKkZGvbKOsioc(IILcom/transsion/camera/app/ui/widget/RotateLayout;)V
    .registers 4

    .line 253
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 254
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 255
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tp-3J3EeweV4KNYfno0k3yb4Wr8(IILandroid/view/ViewParent;)Z
    .registers 3

    if-lez p0, :cond_a

    if-lez p1, :cond_a

    .line 232
    instance-of p0, p2, Landroid/view/ViewGroup;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XaToELEm641D6_mHP54VMr06Aj0(IILcom/transsion/camera/app/ui/widget/RotateLayout;)Z
    .registers 3

    .line 251
    if-lez p0, :cond_6

    if-lez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$gIBxROhIewgtHPOtABVRp10gG7g(Landroid/graphics/Rect;ILandroid/widget/TextView;)V
    .registers 4

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 281
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p0, 0x0

    int-to-float p1, p1

    .line 282
    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static synthetic $r8$lambda$mom7HYfXxSsYVY5DkF6aKPnNw-g(IILandroid/view/ViewGroup;)V
    .registers 4

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 236
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 237
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptw4lVCUwYZ7hvAFn6_QIRXGYSU(IILandroid/view/ViewParent;)Z
    .registers 3

    if-lez p0, :cond_a

    if-lez p1, :cond_a

    .line 242
    instance-of p0, p2, Landroid/view/ViewGroup;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$wM9wsC1XhvVI2s4TB83EE_M9mjQ(IILandroid/view/ViewGroup;)V
    .registers 4

    .line 245
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 246
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 223
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public applyAlphaAnimation(ILjava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public applySelectedBackground(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->itemRootLayout:Landroid/widget/FrameLayout;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V

    return-void
.end method

.method updateSize(II)V
    .registers 6

    .line 228
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->updateSize(II)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rotatableImageViewItem:Lcom/transsion/camera/app/ui/widget/IRotatable;

    check-cast v0, Landroid/widget/ImageView;

    .line 230
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda2;-><init>()V

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda3;-><init>(II)V

    .line 232
    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda4;

    const-class v2, Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;-><init>(II)V

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda6;-><init>()V

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda7;-><init>(II)V

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda8;-><init>(II)V

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->rtLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda9;-><init>(II)V

    .line 251
    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda10;-><init>(II)V

    .line 252
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method updateTextStyle(ILandroid/graphics/Rect;)V
    .registers 4

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda0;-><init>(ILandroid/graphics/Rect;)V

    .line 278
    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;I)V

    .line 279
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
