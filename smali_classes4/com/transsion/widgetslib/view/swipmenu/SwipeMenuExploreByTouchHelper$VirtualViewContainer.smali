.class public final Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VirtualViewContainer"
.end annotation


# instance fields
.field private description:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;->this$0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/CharSequence;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/CharSequence;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    return-void
.end method
