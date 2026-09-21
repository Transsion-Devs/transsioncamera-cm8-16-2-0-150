.class public Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areItemsTheSame(Ljava/lang/Object;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
