.class public Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstantZoomHolder"
.end annotation


# instance fields
.field instantRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;Landroid/view/View;)V
    .registers 3

    .line 219
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 220
    sget p1, Lcom/transsion/camera/R$id;->zoom_instant_root:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 221
    sget p1, Lcom/transsion/camera/R$id;->instant_zoom_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    return-void
.end method


# virtual methods
.method public updateInstantViewBG(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 3

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    return-void
.end method
