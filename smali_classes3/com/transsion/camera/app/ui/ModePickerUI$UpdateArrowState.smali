.class Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateArrowState"
.end annotation


# instance fields
.field showAnim:Z

.field showMinAnime:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;->showAnim:Z

    .line 283
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;->showMinAnime:Z

    return-void
.end method
