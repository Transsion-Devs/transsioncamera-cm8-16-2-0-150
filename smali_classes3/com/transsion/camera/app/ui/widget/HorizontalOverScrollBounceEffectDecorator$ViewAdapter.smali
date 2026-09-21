.class Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$ViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewAdapter"
.end annotation


# instance fields
.field private final mView:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$ViewAdapter;->mView:Landroid/widget/HorizontalScrollView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$ViewAdapter;->mView:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$ViewAdapter;->mView:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isInAbsoluteStart()Z
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$ViewAdapter;->mView:Landroid/widget/HorizontalScrollView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
