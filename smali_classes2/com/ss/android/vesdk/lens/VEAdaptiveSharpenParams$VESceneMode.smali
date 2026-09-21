.class public Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams$VESceneMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VESceneMode"
.end annotation


# static fields
.field public static final VESceneMode_EDIT:I = 0x2

.field public static final VESceneMode_LIVE_GAME:I = 0x0

.field public static final VESceneMode_LIVE_PEOPLE:I = 0x1

.field public static final VESceneMode_RECORED_FRONT:I = 0x4

.field public static final VESceneMode_RECORED_MAIN:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams$VESceneMode;->this$0:Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
