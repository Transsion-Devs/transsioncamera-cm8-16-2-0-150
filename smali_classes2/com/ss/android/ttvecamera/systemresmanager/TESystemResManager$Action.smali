.class public Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public timeout:I

.field public type:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;->timeout:I

    .line 21
    iput-object p1, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;->type:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;I)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;->type:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    .line 26
    iput p2, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;->timeout:I

    return-void
.end method
