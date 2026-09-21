.class public Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLASS_OverScroller:Lcom/transsion/widgetslib/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/util/Singleton<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static final Method_OverScroller:Lcom/transsion/widgetslib/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/util/Singleton<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRAN_FLING_TYPE_CARD:I = 0x1

.field public static final TRAN_FLING_TYPE_DEFALUT:I


# direct methods
.method public static synthetic $r8$lambda$64me7Z0BgMQ-VxVl_t8WOJFWmdE()Ljava/lang/reflect/Method;
    .registers 3

    .line 19
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->CLASS_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setTranFlingType"

    invoke-static {v0, v2, v1}, Lcom/transsion/widgetslib/util/Utils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$q3r-KNoQ504Cx_q4-L5DbiNpZ-w()Ljava/lang/Class;
    .registers 1

    .line 17
    const-string v0, "android.widget.OverScroller"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->CLASS_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    .line 19
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->Method_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTranFlingType(Landroid/widget/AbsListView;I)V
    .registers 3

    .line 28
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->Method_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 29
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->setTranFlingType(Landroid/widget/AbsListView;I)V

    :cond_b
    return-void
.end method

.method public static setTranFlingType(Landroid/widget/HorizontalScrollView;I)V
    .registers 3

    .line 39
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->Method_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 40
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/tranfling/HorizontalScrollViewProxy;->setTranFlingType(Landroid/widget/HorizontalScrollView;I)V

    :cond_b
    return-void
.end method

.method public static setTranFlingType(Landroid/widget/ScrollView;I)V
    .registers 3

    .line 34
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->Method_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 35
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/tranfling/ScrollViewProxy;->setTranFlingType(Landroid/widget/ScrollView;I)V

    :cond_b
    return-void
.end method

.method public static setTranFlingType(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 22
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->Method_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 23
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy;->setTranFlingType(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_b
    return-void
.end method
