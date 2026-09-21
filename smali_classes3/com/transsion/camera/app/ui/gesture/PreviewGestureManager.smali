.class public Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

.field private mGestureNotifier:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

.field private mGestureRecognizer:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureNotifier(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureNotifier:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewGestureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/transsion/camera/app/common/IAppUI;)V
    .registers 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    .line 36
    new-instance v0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    new-instance v1, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager-IA;)V

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;ZLcom/transsion/camera/app/common/IAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureRecognizer:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    .line 37
    new-instance p1, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;-><init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureNotifier:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureRecognizer:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V
    .registers 3

    if-nez p1, :cond_a

    .line 42
    sget-object p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerGestureListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V
    .registers 3

    if-nez p1, :cond_b

    .line 50
    sget-object p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "unregisterGestureListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method
