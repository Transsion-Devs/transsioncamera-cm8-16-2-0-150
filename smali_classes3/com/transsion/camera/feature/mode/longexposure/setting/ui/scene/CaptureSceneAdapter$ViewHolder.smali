.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private final mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$K12WPcM5vnPfvyXj-Qr08h6bH3A(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;Landroid/view/View;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->lambda$new$0(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;Landroid/view/View;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCompatIconView(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageView(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;)V
    .registers 5

    .line 209
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 211
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 212
    sget v0, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_scene_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    goto :goto_1e

    .line 214
    :cond_14
    sget v0, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_scene_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 216
    :goto_1e
    sget v0, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_scene_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 217
    sget v0, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_scene_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 219
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;Landroid/view/View;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_4c

    const/4 p2, 0x1

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 232
    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_4c
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;Landroid/view/View;Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;Landroid/view/View;)V
    .registers 5

    .line 220
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;->isDown()Z

    move-result p1

    if-nez p1, :cond_17

    .line 221
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_17

    .line 224
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_17

    .line 226
    invoke-interface {p3, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public updateRotation(IIZ)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 p1, 0x5a

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 246
    :cond_c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez p1, :cond_1f

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void

    .line 250
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;->mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method
