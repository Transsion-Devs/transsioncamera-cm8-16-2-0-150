.class public Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;,
        Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$AccessKey;
    }
.end annotation


# static fields
.field public static final CUT_SAME_KEY:Ljava/lang/String; = "cut_same_key"

.field public static final FREE_SHOT_KEY:Ljava/lang/String; = "free_shot_key"

.field public static final HOME_PAGE_KEY:Ljava/lang/String; = "home_page_key"

.field public static final VLOG_MANAGER_KEY:Ljava/lang/String; = "vlog_manager_key"

.field private static final sAccessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPressedViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$keYDRbIKWPKxk2y_p5gmjgNTmFY(Landroid/view/View;Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 61
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eqz p2, :cond_20

    const/4 p3, 0x1

    if-eq p2, p3, :cond_d

    const/4 p3, 0x3

    if-eq p2, p3, :cond_d

    goto :goto_34

    :cond_d
    if-eqz p1, :cond_12

    .line 71
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;->onActionUpOrCancel()V

    .line 73
    :cond_12
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sPressedViewMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 63
    :cond_20
    sget-object p2, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sPressedViewMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_34

    .line 65
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;->onActionDown()V

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sAccessMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sPressedViewMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized canAccess(Landroid/view/View;)Z
    .registers 6

    const-class v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;

    monitor-enter v0

    .line 84
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sPressedViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_d

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sPressedViewMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_34

    if-eqz v2, :cond_d

    .line 86
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_34
    move-exception p0

    goto :goto_39

    .line 90
    :cond_36
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_34

    throw p0
.end method

.method public static declared-synchronized canAccess(Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sAccessMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    .line 44
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    if-nez v2, :cond_14

    goto :goto_19

    .line 48
    :cond_14
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_17
    move-exception p0

    goto :goto_21

    .line 45
    :cond_19
    :goto_19
    :try_start_19
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_17

    .line 46
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_21
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_17

    throw p0
.end method

.method public static declared-synchronized clear(I)V
    .registers 3

    const-class v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;

    monitor-enter v0

    .line 94
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sPressedViewMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 95
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static declared-synchronized clear(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;

    monitor-enter v0

    .line 56
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sAccessMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 57
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static declared-synchronized clearAll()V
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;

    monitor-enter v0

    .line 98
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sAccessMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 99
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sPressedViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 100
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static declared-synchronized reAccess(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->sAccessMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 53
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static declared-synchronized registerTouchingView(Landroid/view/View;Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;)V
    .registers 4

    const-class v0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;

    monitor-enter v0

    .line 60
    :try_start_3
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 81
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method
