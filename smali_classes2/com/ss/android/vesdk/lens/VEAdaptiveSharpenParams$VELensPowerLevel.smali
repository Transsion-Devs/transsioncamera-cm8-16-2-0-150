.class public Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams$VELensPowerLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VELensPowerLevel"
.end annotation


# static fields
.field public static final LENS_POWER_LEVEL_AUTO:I = 0x4

.field public static final LENS_POWER_LEVEL_DEFAULT:I = 0x0

.field public static final LENS_POWER_LEVEL_HIGH:I = 0x3

.field public static final LENS_POWER_LEVEL_LOW:I = 0x1

.field public static final LENS_POWER_LEVEL_NORMAL:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams$VELensPowerLevel;->this$0:Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
