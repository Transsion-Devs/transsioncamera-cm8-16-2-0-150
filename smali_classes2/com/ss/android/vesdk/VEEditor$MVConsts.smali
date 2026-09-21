.class public Lcom/ss/android/vesdk/VEEditor$MVConsts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MVConsts"
.end annotation


# static fields
.field public static final TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final TYPE_BGIMG:Ljava/lang/String; = "bgimg"

.field public static final TYPE_GIF:Ljava/lang/String; = "gif"

.field public static final TYPE_IMG:Ljava/lang/String; = "img"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 11455
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$MVConsts;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
