.class final Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;->setDrawableList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $drawableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/transsion/widgetslib/flipper/FlipperLayout;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;->$drawableList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
        }
    .end annotation

    .line 412
    new-instance v0, Lcom/transsion/widgetslib/flipper/DefaultAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;->$drawableList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/flipper/DefaultAdapter;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setDefaultAdapter$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Lcom/transsion/widgetslib/flipper/DefaultAdapter;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 411
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$setDrawableList$1;->invoke()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method
