.class Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;-><init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .registers 4

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 169
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 172
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDoubleTap(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 85
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 88
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 241
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 242
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 244
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 113
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 116
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 72
    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 76
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_e

    :cond_26
    return-void
.end method

.method public onLongPress(FF)Z
    .registers 4

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 227
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 228
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 230
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 183
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 184
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 186
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_29
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 197
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 198
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 200
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 204
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 212
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 213
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 215
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 219
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 127
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 130
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapConfirmed(FF)Z
    .registers 4

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 155
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 156
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 158
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapConfirmed(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 4

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 141
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 142
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 144
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->-$$Nest$fgetmGestureListeners(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 99
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 100
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_e

    .line 102
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method
