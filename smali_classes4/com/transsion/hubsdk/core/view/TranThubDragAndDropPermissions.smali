.class public Lcom/transsion/hubsdk/core/view/TranThubDragAndDropPermissions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranDragAndDropPermissionsAdapter;


# instance fields
.field private mTranDragAndDropPermissions:Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranDrag()Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubDragAndDropPermissions;->mTranDragAndDropPermissions:Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubDragAndDropPermissions;->mTranDragAndDropPermissions:Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;

    .line 19
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubDragAndDropPermissions;->mTranDragAndDropPermissions:Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;

    return-object p0
.end method


# virtual methods
.method public obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubDragAndDropPermissions;->getTranDrag()Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p0

    return-object p0
.end method

.method public takeTransient(Landroid/view/DragAndDropPermissions;)Z
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubDragAndDropPermissions;->getTranDrag()Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranDragAndDropPermissions;->takeTransient(Landroid/view/DragAndDropPermissions;)Z

    move-result p0

    return p0
.end method
