.class public abstract Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ABSLISTVIEW_CLASS:Ljava/lang/Class;

.field public static final BOUNCEEFFECT_SUPPORT:Z

.field public static HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;

.field public static SCROLLVIEW_CLASS:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "persist.sys.traneffect.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    :try_start_9
    const-string v0, "android.widget.AbsListView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    const-string v0, "android.widget.HorizontalScrollView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;

    const-string v0, "android.widget.ScrollView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_22

    return-void

    :catch_22
    const-string v0, "OverScrollDecorHelper"

    const-string v1, "class not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z
    .registers 4

    const-string v0, "enableTranBounceEffect"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    const/4 p0, 0x1

    return p0

    :catchall_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBounceEdgeEffect not found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverScrollDecorHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setUpMiscViewOverScroll(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 7

    const/4 v0, 0x0

    const-string v1, "OverScrollDecorHelper"

    if-nez p0, :cond_b

    const-string p0, "exception view = null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    sget-boolean v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v2, :cond_12

    if-nez p3, :cond_12

    return-object v0

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clazz:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_53

    const/4 p3, 0x1

    if-ne p1, p3, :cond_4b

    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    invoke-direct {p1, p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance p2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 4
    iput-object p2, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object p1

    .line 5
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    invoke-direct {p1, p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance p2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 6
    iput-object p2, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object p1
.end method

.method public static setUpOverScroll(Landroid/widget/HorizontalScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception HorizontalScrollView = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    sget-object v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_19

    return-object v0

    :cond_19
    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOif;

    invoke-direct {v1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOif;-><init>(Landroid/widget/HorizontalScrollView;)V

    invoke-direct {v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 2
    iput-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/ListView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception ListView = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    sget-object v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_19

    return-object v0

    :cond_19
    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;

    invoke-direct {v1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;-><init>(Landroid/widget/AbsListView;)V

    invoke-direct {v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 3
    iput-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/ScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "OverScrollDecorHelper"

    const-string v1, "exception ScrollView = null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    sget-object v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_19

    return-object v0

    :cond_19
    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;

    invoke-direct {v1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;-><init>(Landroid/widget/ScrollView;)V

    invoke-direct {v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 4
    iput-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object v0
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "OverScrollDecorHelper"

    const-string p1, "exception recyclerView = null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;

    invoke-direct {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    if-eqz p1, :cond_34

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2c

    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    .line 5
    iput-object v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    .line 6
    iput-object p1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    return-object p1

    .line 7
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    .line 8
    iput-object v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    .line 9
    iput-object p1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    return-object p1
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 3

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    if-eqz p0, :cond_c

    if-eqz p2, :cond_c

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enableNestedScrollMode(Z)V

    :cond_c
    return-object p0
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "OverScrollDecorHelper"

    const-string p1, "exception recyclerView = null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    sget-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v1, :cond_12

    if-nez p3, :cond_12

    return-object v0

    :cond_12
    new-instance p3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;

    invoke-direct {p3}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;-><init>()V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    if-ne p1, v0, :cond_2e

    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    .line 10
    iput-object p3, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    .line 11
    iput-object p1, p3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    goto :goto_44

    .line 12
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    .line 13
    iput-object p3, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    .line 14
    iput-object p1, p3, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    :goto_44
    if-eqz p2, :cond_49

    .line 15
    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enableNestedScrollMode(Z)V

    :cond_49
    return-object p1
.end method
