.class public Lcom/ss/android/vesdk/filterparam/VEColorHslFilterParam$VEHslRenderType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/filterparam/VEColorHslFilterParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VEHslRenderType"
.end annotation


# static fields
.field public static final VEHslRenderType_ALL:I = 0x1

.field public static final VEHslRenderType_CAVAS:I = 0x1

.field public static final VEHslRenderType_VIDEO:I


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/filterparam/VEColorHslFilterParam;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/filterparam/VEColorHslFilterParam;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEColorHslFilterParam$VEHslRenderType;->this$0:Lcom/ss/android/vesdk/filterparam/VEColorHslFilterParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
