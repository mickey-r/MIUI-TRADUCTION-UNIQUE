.class Lcom/miui/compass/CompassActivity$2;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$2;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$2;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v0, v1}, Lcom/miui/compass/CompassActivity;->access$700(Lcom/miui/compass/CompassActivity;Z)V

    .line 390
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$2;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v0, v1}, Lcom/miui/compass/CompassActivity;->access$802(Lcom/miui/compass/CompassActivity;Z)Z

    .line 391
    return-void
.end method
