.class public final synthetic Lcom/transsion/camera/utils/BitmapPoolUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/BitmapPoolUtil$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/utils/BitmapPoolUtil$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapPoolUtil;->$r8$lambda$CyWY_3DsNj4JKI0jUcQkL75yJ7U(Landroid/graphics/Bitmap;)V

    return-void
.end method
